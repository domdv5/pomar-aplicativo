const connection = require('../../config/db');
const bcryptjs = require('bcryptjs');
const express = require('express')
const router = express.Router()


router.get('/crud', async (req, res) => {
    if (req.session.loggedin) {
        connection.query(`SELECT miembros.*, comites.nombre as Comite FROM miembros 
        INNER JOIN comites ON comites.id_comite = miembros.id_comite 
        ORDER BY miembros.id_users ASC`, (err, result) => {
            if (err) {
                res.send(err);
            } else {
                res.render('../views/crud.ejs', {
                    data: result
                });
            }
        })
    } else {
        login: false
        res.render('../views/index1');
    }
})

router.post("/add", async (req, res) => {
    const data = req.body;
    await connection.query("INSERT INTO miembros SET ?", [data], (err, result) => {
        if (err) {
            res.send(err);
        } else {
            res.render("../../app/views/crud", {
                alert: true,
                position: 'top-end',
                icon: 'success',
                title: 'Usuario agregado',
                showConfirmButton: false,
                timer: 1500,
                ruta: 'crud',
                width: '300px',
                heightAuto: false,
                height: '50px',
                data: result
            })
        }
    })
})


router.get("/delete/:id_user", async (req, res) => {
    const id_user = req.params.id_user;
    await connection.query("DELETE FROM miembros WHERE id_users = ?", [id_user], (err, result) => {
        if (err) {
            res.send(err);
        } else {
            res.render('../../app/views/crud.ejs', {
                alert: true,
                position: 'top-end',
                icon: 'success',
                title: 'Usuario eliminado exitosamente',
                showConfirmButton: false,
                timer: 1500,
                ruta: 'crud',
                width: '300px',
                heightAuto: false,
                height: '50px',
                data: result
            })
        }
    })
})


router.post("/edit/:id_user", (req, res) => {
    const id_user = req.params.id_user;
    const { fullname, username, state } = req.body;
    connection.query("UPDATE miembros SET fullname = ?, username = ?, state = ?  WHERE id_user = ?", [fullname, username, state, id_user], (err, result) => {
        if (err) {
            res.send(err);
        } else {
            res.redirect("/crud");
        }
    })
})

/*    router.post('/filter', (req, res) => {
        connection.query('SELECT * FROM users WHERE state = ?', ['No restringido'], (err, result) => {
            if (err) {
                res.send(err);
            } else {
                res.render('../views/crud.ejs', {
                    data: result
                });
            }
        })
    })
 */

module.exports = router

