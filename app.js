const db = require('./config/db.config')
const queries = require('./db/consults')

console.log(db.consult(queries.employees))