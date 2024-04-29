const express = require('express');
const path = require('path');
const app = express();
require('dotenv').config();
const configViewEngine = require('./config/viewEngine.js');

//configViewEngine
configViewEngine(app);

const port = process.env.PORT || 8888;
const hostname = process.env.HOST_NAME;

//config json api
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(bodyParser.json());

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