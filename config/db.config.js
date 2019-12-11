const mysql = require('mysql')

const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: 'sfc',
    password: 'Pruebas',
    database: 'Bartholomew',
    port: 3306
})

function consult(consult){
    connection.connect()
    connection.query(consult, (error, results, fields) =>{
        if(error) throw error
        console.log(results)
    })
    connection.end()
}


module.exports = {
    connection,
    consult
}