#!/usr/bin/env ash

if [ ! -d "node_modules" ]; then
    npm install --silent
fi

npm run serve