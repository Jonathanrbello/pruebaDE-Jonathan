const express = require('express');
const config = require('./config');

const app = express();
const port = 3000;

const db = config.db;

app.get('/currencies/:currency', async (req, res) => {
  const currency = req.params.currency;
  const finit = req.query.finit;
  const fend = req.query.fend;

  if (currency !== 'all' && (!/^[A-Za-z]{3}$/.test(currency))) {
    return res.status(400).json({ error: 'Solicitud inválida: currency debe ser "all" o un código de 3 caracteres.' });
  }

  try {
    let query = 'SELECT * FROM divisas WHERE 1=1';

    if (currency !== 'all' && currency.length === 3) {
      query += ` AND divisa_codigo = '${currency}'`;
    }

    if (finit) {
      query += ` AND fecha_hora >= '${finit}'`;
    }
    if (fend) {
      query += ` AND fecha_hora <= '${fend}'`;
    }

    const result = await db.any(query);

    if (result.length === 0) {
      return res.status(404).json({ error: 'No se encontraron datos.' });
    }

    res.json(result);
  } catch (error) {
    console.error('Error en la consulta a la base de datos:', error.message);
    res.status(500).json({ error: 'Error del servidor.' });
  }
});

app.listen(port, () => {
  console.log(`Servidor escuchando en el puerto ${port}`);
});