FROM node:18.19.0-alpine
#FROM node:18.19.0 # non-alpine - works

WORKDIR /usr/app

COPY *.json ./

RUN npm ci

# For POC - Copying pre-compiled `musl` binary:
COPY glide-rs.linux-arm64-musl.node node_modules/@aws/glide-for-redis-linux-arm64/node_modules/glide-rs/glide-rs.linux-arm64-musl.node

CMD [ "npm", "run", "dev" ]
