FROM node:12-alpine as builder

WORKDIR /app
COPY ./ /app/
RUN npm install
RUN npm run build --configuration=dev
