const express = require('express');
const router = express.Router();
const connection = require('../../config/db');
const bcryptjs = require('bcrypt');


router.post('/login', async (req, res) => {
    const { username, password } = req.body;
    if (username && password) {
        connection.query('SELECT * FROM usuarios WHERE username = ?', [username], async (err, result) => {
            if (result.length === 0 || !(await bcryptjs.compare(password, result[0].password))) {
                res.render('../views/index1.ejs', {
                    alert: true,
                    alertTitle: 'Inicio de sesión fallido',
                    alertMessage: 'Nombre de usuario y/o contraseña incorrecto(s))',
                    alertIcon: 'error',
                    showConfirmButton: true,
                    timer: 4000,
                    ruta: ''
                })
            } else {
                req.session.loggedin = true;
                req.session.username = result[0].username;
                res.render('../views/index1.ejs', {
                    alert: true,
                    alertTitle: 'Inicio de sesion satisfactorio',
                    alertMessage: 'Bienvenido, ' + req.session.username,
                    alertIcon: 'success',
                    showConfirmButton: false,
                    timer: 4000,
                    ruta: 'crud',
                })
            }
        })
    }
});

router.get('/', (req, res) => {
    res.render('../views/index1')
})


router.get('/logout', (req, res) => {
    req.session.destroy(() => {
        res.render('../views/index1');
    })
})



module.exports = router;