#!/bin/sh
FILE=/app/app/index.ts
if test -f "$FILE"; then
  echo "Code already exists"
else
  echo "Code doesn't exist. Copying..."
  cp -R /template/* /app
  chmod -R 777 /app
fi
cd /app
npm i
npm start