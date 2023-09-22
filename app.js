const axios = require('axios');
const { db, config } = require('./config');

const registerCallInDatabase = async (elapsedTimeSeconds, exitoso) => {
  try {
    const insertQuery = `
      INSERT INTO registro_llamadas (fecha_hora, motivo_error, tiempo_respuesta, exitoso, timeout_configurado)
      VALUES ($1, $2, $3, $4, $5)
    `;

    const values = [
      new Date(),
      exitoso ? 'Éxito' : 'Timeout en la llamada a la API',
      elapsedTimeSeconds,
      exitoso,
      config.timeoutSeconds,
    ];

    await db.none(insertQuery, values);
  } catch (error) {
    console.error('Error al registrar la llamada en la base de datos:', error.message);
  }
};

const fetchDataFromAPI = async () => {
  const startTime = Date.now();

  try {
    const response = await axios.get(`${config.apiUrl}?apikey=${config.apiKey}`, {
      timeout: config.timeoutSeconds * 1000,
    });

    const data = response.data; 

    const endTime = Date.now();
    const elapsedTimeSeconds = (endTime - startTime) / 1000;
    if (elapsedTimeSeconds < config.timeoutSeconds) {
      console.log(`Tiempo transcurrido desde la llamada a la API: ${elapsedTimeSeconds} segundos.`);
    }

    const insertQuery = `
      INSERT INTO divisas (fecha_hora, divisa_codigo, divisa_nombre, divisa_simbolo, divisa_decimal_digits, divisa_rounding, divisa_name_plural)
      VALUES ($1, $2, $3, $4, $5, $6, $7)
    `;

    for (const divisaCodigo in data.data) {
      const divisa = data.data[divisaCodigo];
      const formattedDate = new Date().toISOString();
      const values = [
        formattedDate,
        divisaCodigo,
        divisa.name,
        divisa.symbol,
        divisa.decimal_digits,
        divisa.rounding,
        divisa.name_plural,
      ];

      await db.none(insertQuery, values);
    }

    await registerCallInDatabase(elapsedTimeSeconds, true);

    scheduleNextCall(elapsedTimeSeconds);

  } catch (error) {
    if (error.code === 'ECONNABORTED') {
      console.error('Timeout en la llamada a la API: La solicitud ha superado el tiempo límite.');

      await registerCallInDatabase(config.timeoutSeconds, false);

      console.error('Saliendo de la aplicación debido a un timeout');
      process.exit(1);
    } else {
      console.error('Error en la llamada a la API:', error.message);
    }
  }
};

const scheduleNextCall = (elapsedTimeSeconds) => {
  const nextCallDelay = (config.intervalMinutes * 60 - elapsedTimeSeconds) * 1000; 
  console.log(`Programando la siguiente llamada a la API en ${nextCallDelay / 1000} segundos...`);
  setTimeout(() => {
    console.log('Realizando llamada a la API...');
    fetchDataFromAPI();
  }, nextCallDelay);
};

console.log('Iniciando la aplicación...');
fetchDataFromAPI();