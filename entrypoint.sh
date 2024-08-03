#!/bin/bash
# Set permissions for key file
chown mongodb:mongodb /data/configdb/mongo-keyfile
chmod 600 /data/configdb/mongo-keyfile
# Start MongoDB
exec "$@"
