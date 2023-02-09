#!/bin/sh
FILE=/app/src/index.ts
if test -f "$FILE"; then
  echo "Code already exists"
else
  echo "Code doesn't exist. Copying..."
  cp -R /template/* /app
fi
cd /app
npm start