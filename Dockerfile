FROM node:12-alpine as builder

WORDIR /home/node/aap/

COPY packe.json .

RUN npm install -g @angular/cli@11.2.12
RUN npm i
COPY src ./src
COPY angular.json .
COPY tsconfig.json .
COPY tsconfig.app.json .
COPY tsclint.json .

RUN ng build --congiguration
