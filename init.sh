#!/bin/sh
FILE=/app/package.json
if test -f "$FILE"; then
  echo "Code already exists"
else
  echo "Code doesn't exist. Copying..."
  cp -R /template/* /app
  chmod -R 777 /app
  rm -rf /app/charts
  rm -rf /app/init.sh
fi
cd /app
npm i
npm start