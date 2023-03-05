FROM node:18-alpine

COPY ./api .
WORKDIR .
RUN npm install

CMD ["npm", "run", "start:production"]
EXPOSE 3000