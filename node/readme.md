# Simple Node App and Dockerization

This README provides a step-by-step guide on creating a simple Node.js application and dockerizing it.

## Prerequisites

- Node.js installed
- Docker installed

## Creating a Simple Node.js Application

1. **Initialize the Project**

    ```bash
    npm init -y
    ```

2. **Create `app.js`**

    ```javascript
    const http = require('http');
    const port = 3000;

    const requestHandler = (req, res) => {
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.end('Hello World!');
    };

    const server = http.createServer(requestHandler);

    server.listen(port, () => {
        console.log(`Server running at http://localhost:${port}`);
    });
    ```

3. **Run the Application**

    ```bash
    node app.js
    ```

## Dockerizing the Application

1. **Create a `Dockerfile`**

    ```Dockerfile
    # Use the official Node.js image
    FROM node:14

    # Create and change to the app directory
    WORKDIR /usr/src/app

    # Copy application code
    COPY . .

    # Expose the port the app runs on
    EXPOSE 3000

    # Run the application
    CMD ["node", "app.js"]
    ```

2. **Build the Docker Image**

    ```bash
    docker build -t simple-node-app . 
    ```

3. **Run the Docker Container**

    ```bash
    docker run -p 3000:3000 simple-node-app
    ```

## Accessing the Application

Open your browser and navigate to `http://localhost:3000` to see the application running.

## Conclusion

You have successfully created and dockerized a simple Node.js application.