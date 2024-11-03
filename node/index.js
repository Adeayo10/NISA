const { checkPrime } = require('crypto');
const http = require('http');

const hostname = '0.0.0.0';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.statusMessage = 'Hello World!';
  res.end('Hello World\n');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});

function test() {
  checkPrime(5)? console.log('prime') : "not prime"; 
  console.log('test');
}

function test2() {
  console.log('test2');
}
