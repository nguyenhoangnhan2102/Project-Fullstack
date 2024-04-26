const express = require('express')
const app = express()

//configViewEngine
configViewEngine(app);


//used router
app.use('/', webRoutes);
app.use("/api/v1/", apiRoute);


app.get('/', function (req, res) {
    res.send('Hello World')
})
app.get('/fdgdfg', function (req, res) {
    res.send('Hello World')
})
app.listen(3000)