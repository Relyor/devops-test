FROM node:20.18.1-alpine3.21

WORKDIR /app

COPY index.js package*.json .

RUN npm install

EXPOSE 4000

CMD ["npm", "start"]
