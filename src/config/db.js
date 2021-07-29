const mysql = require('mysql')


const conexion = mysql.createConnection({
    user: 'root',
    host: 'localhost',
    password:'',
    database: 'afiliados',
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