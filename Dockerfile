FROM node:12-alpine as builder

COPY package.json .

RUN npm install i -g @angular/cli@latest

COPY src ./src
COPY angular.json .
COPY tsconfig.json .
COPY tsconfig.app.json .
COPY tslint.json .

#RUN ng build --prod
