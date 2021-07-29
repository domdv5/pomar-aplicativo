
const app = require("./config/server");
app.use(require('../src/app/routes/navigation'));
app.use(require('../src/app/routes/inventory'))


app.listen(app.get('port'), () => {
    console.log(`server on port, http://localhost:7000/`)
})

