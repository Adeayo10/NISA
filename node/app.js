const http = require('http');

const hostname = '0.0.0.0/0';  
const port = 3000;

const server = http.createServer((req, res) => {
    
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.write('Hello World!\n');

});

server.listen(3000, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
    }
);