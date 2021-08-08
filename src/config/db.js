const mysql = require('mysql')


const conexion = mysql.createConnection({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    password:process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE,
})


conexion.connect((error) => {
    if (error) {
        console.log(error);
        return
    } else {
        console.log('Database Connected');
    }
})


module.exports = conexion;