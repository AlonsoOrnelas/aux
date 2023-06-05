#imagen de node
FROM node:18-alpine

LABEL authors="ramon.ornelas@axity.com"
WORKDIR /app
#Copiamos  archivos js
COPY app/yarn.lock app/package.json ./
RUN npm i --omit dev
#copiamos nuestra app
COPY app/spec ./spec
COPY app/src ./src
#ejecutamos el proyecto
CMD node src/index.js
EXPOSE 3000
