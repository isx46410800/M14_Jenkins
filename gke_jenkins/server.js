// Crea una aplicacion express con Hola Mundo
// activa la ejecución de código en el modo estricto. Sin esta directiva, el programa se ejecuta en el modo irrestricto.
'use strict';

// constantes
const express = require('express');

const PORT = process.env.PORT || 3000;

// Aplicacion con nombre app
const app = express();
app.get('/', function (req, res) {
  res.send('Hello world\n');
});

// url y puerto por el que correrá la app
app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
