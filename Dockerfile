FROM node:18.19.0-alpine
#FROM node:18.19.0 # non-alpine - works

WORKDIR /usr/app

COPY *.json ./

RUN npm ci

CMD [ "npm", "run", "dev" ]
