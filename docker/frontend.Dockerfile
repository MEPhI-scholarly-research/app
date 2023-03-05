FROM node:18-alpine as builder

COPY ./ui .
WORKDIR .
RUN npm install
RUN npm run build

FROM nginx
WORKDIR .
COPY ./dist /usr/share/nginx/html