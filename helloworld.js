var http = require("http")

http.createServer(function (request, response) {
  response.writeHead(200, { 'Content-Type': 'text/plain' })
  response.end('Hello, world again!\n' + JSON.stringify(process.env))
}).listen(3000)

console.log('Server running')
