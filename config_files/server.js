//meanapp1/server.js

var http = require('http');
var express = require('express');
var app = require('./config/express')();
// require('./config/passport')();
// require('./config/database.js')('<<pasta do database vem aqui, por exemplo: mongodb://localhost/meanapp1>>');

http.createServer(app).listen(app.get('port'), function(){
    console.log('Express Server escutando na porta '+
    app.get('port'));
});