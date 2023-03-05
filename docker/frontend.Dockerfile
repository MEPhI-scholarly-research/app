FROM node:18-alpine as builder

WORKDIR /app
COPY ./ui /app/
RUN npm install
RUN npm run build

FROM nginx
WORKDIR .
COPY --from=builder /app/dist /usr/share/nginx/html