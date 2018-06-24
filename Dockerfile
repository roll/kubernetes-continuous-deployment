FROM node:10
MAINTAINER roll

WORKDIR /workspace

COPY app ./app
COPY package-lock.json .
COPY package.json .

RUN npm install --production

ENV PORT 80
EXPOSE $PORT

CMD node app/server.js
