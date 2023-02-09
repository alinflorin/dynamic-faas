FROM node:lts-alpine
WORKDIR /template
COPY . .
VOLUME /app
WORKDIR /
COPY ./init.sh ./init.sh
CMD ./init.sh