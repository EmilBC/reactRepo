## Fichier : ./react-docker/Dockerfile
FROM node:latest

WORKDIR /tmp

COPY package*.json ./

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
