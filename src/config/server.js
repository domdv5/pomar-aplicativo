const express = require('express');
const dotenv = require('dotenv');
const path = require('path');
const session = require('express-session');
const morgan = require('morgan');

//initializations
const app = express();


//configuracion del server

app.set('port', process.env.PORT || 7000);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, '../app/views'));

//middlewares
app.use(express.urlencoded({ extended: false }));
app.use(express.json());



//configuracion dotenv para variables de entorno
dotenv.config({ path: path.join(__dirname, '../../env/.env') });

//configurar la ruta donde estan alojados los elementos del css (public)
app.use('/resources', express.static(path.join(__dirname, '../public')));

//configurar el manejo de sessiones dentro de la apliacion
app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));



module.exports = app;