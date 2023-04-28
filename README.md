# How to run this project:
- This is a docker-project to run it do the the following:
- npm install
- docker-compose up --build

- To bring the containers down 
- docker-compose down -v

# how to access the database
- best way to use dbeaver but if you want to use pgAdmin go for it!
- host: localhost
- port: 5434
- Database: postgres
- username: postgres
- passwrod: postgres

# Access Swagger UI to call endpoints/ documentation

- http://localhost:3008/documentation#

# How to add debugger
-- install docker extenstion in vs code

**STEP 1: docker-compose.yaml file**

- Add port 9229:9229 to ports in the nodejs container as below

```
nodejs:
    build: ./.docker/node/
    image: node:13.8-alpine3.10
    container_name: Backend-portfolio
#    restart: unless-stopped
    env_file:
      - ./.docker/node/env
      - ./.docker/postgres/env
    ports:
      - 3008:3008
      - 9229:9229 # debug port
    volumes:
      - .:/home/node/app
    networks:
      app-env:
    environment:
      WAIT_HOSTS: postgres:5432
      WAIT_HOSTS_TIMEOUT: 90
      TZ: 'Africa/Johannesburg'
      PGTZ: 'Africa/Johannesburg'
    command: sh -c "/wait && npm start"
```

**STEP 2: package.json file**
- Add the following line to the start script
``` "start": "nodemon --inspect=0.0.0.0 ./app.js"```

**NB!! its important to add the ./app,js after the --inspect=0.0.0.0**

**STEP 3: Add the launch.json file**

- Add the following to the json file

```
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Docker: Attach to node",
            "type": "node",
            "request": "attach",
            "remoteRoot": "/home/node/app",
            "port": 9229,
            "address": "localhost",
            "localRoot": "${workspaceFolder}",
            "protocol": "inspect",
            "restart": true
        }
    ]
}
```

**STEP 4: Run project**
- Run the project as normal with docker, and then start the debugger in the debugger tab, and **DON'T PUSH THE CODE.**
