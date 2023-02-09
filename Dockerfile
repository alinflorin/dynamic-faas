FROM node:lts-alpine
WORKDIR /template
COPY . .
RUN npm i
VOLUME /app
WORKDIR /
COPY ./init.sh ./init.sh
CMD ./init.sh