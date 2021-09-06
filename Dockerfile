FROM node:12-alpine as builder

WORKDIR /app
COPY ./ /app/
RUN npm install -g @angular/cli
RUN npm i
RUN npm run build --configuration=dev
