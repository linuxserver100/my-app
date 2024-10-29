#!/bin/bash
# Define paths
FRONTEND_PATH="/var/www/myapp/frontend"
BACKEND_PATH="/var/www/myapp/backend"
# Frontend deployment
echo "Deploying frontend..."
rm -rf $FRONTEND_PATH/build
mv ~/frontend/build $FRONTEND_PATH
# Backend deployment
echo "Deploying backend..."
sudo npm i pm2 -g && cd /var/www/backend && pm2 start index.js
