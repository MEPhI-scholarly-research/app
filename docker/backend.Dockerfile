FROM node:18-alpine

WORKDIR /app
COPY ./api /app
RUN npm install && npm install typescript -g
RUN npm run build

CMD ["npm", "run", "start:production"]
EXPOSE 3000