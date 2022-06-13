var http = require('http');
var server = http.createServer(function(req, res) {
    res.writeHead(200);
    res.end("<h1>Hello from Emmanuel@Ansible</h1>");
});
server.listen(3000);