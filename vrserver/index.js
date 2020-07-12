var express = require('express');
var fs = require('fs');
var https = require('https');

var app = express();

app.use(express.static('public'));

var credentials = { 
    key: fs.readFileSync('./priv.key', 'utf8'), 
    cert: fs.readFileSync('./pub.cert', 'utf8')
};

var httpsServer = https.createServer(credentials, app);
httpsServer.listen(443, () => { // Start HTTPS server
    console.log(`HTTPS server is running at port 443.`);
});
