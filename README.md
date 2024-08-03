# Step 1: Create Necessary Files

Create the following files in your project directory.

# Step 2: Create `haproxy.cfg` File

# Step 3: Make The Script Executable

- `chmod +x entrypoint.sh`

# Step 4: Generate and Set Permissions for the Key File

- Create File using: `openssl rand -base64 756 > mongo-keyfile`

- `chmod 600 mongo-keyfile`

# Step 5: Create `docker-compose.yml` File

- Run docker compose with `docker-compose up` command

# Step 6: Access One Of The MongoDB Instances

- `docker exec -it mongo1 mongo -u root -p example --authenticationDatabase admin`

# Step 7: Initialize the replica set: 

```javascript
    rs.initiate({
    _id: "rs0",
    members: [
        { _id: 0, host: "mongo1:27017" },
        { _id: 1, host: "mongo2:27017" },
        { _id: 2, host: "mongo3:27017" }
    ]
    })
```

# Step 8: Verify Connectivity

- `mongosh --host localhost --port 27020 -u root -p example --authenticationDatabase admin`

# Final Step: Connect

- URI: `mongodb://<credentials>@localhost:27020/?directConnection=true&authSource=admin&appName=mongosh+2.2.15`