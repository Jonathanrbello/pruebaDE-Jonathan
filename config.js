const pgp = require('pg-promise')();

const db = pgp({
  user: 'postgres',
  password: '1234',
  host: 'localhost',
  database: 'coppel',
});

const config = {
  intervalMinutes: 1,
  timeoutSeconds: 1,
  apiKey: 'cur_live_kPyh7Hq4Rc4uPcW1qhq3mgMxgKmYn7S8MIavYlDp',
  apiUrl: 'https://api.currencyapi.com/v3/currencies',
};

module.exports = { db, config };