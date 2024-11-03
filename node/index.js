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


function checkPrime(num) {
  if (num <= 1) {
    return false;
  }
  for (let i = 2; i <= Math.sqrt(num); i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true; 
}

function getPrimes(n) {
  const primes = [];
  for (let i = 2; i <= n; i++) {
    if (checkPrime(i)) {
      primes.push(i);
    }
  }
  return primes;
}
