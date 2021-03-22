FROM node:10-buster

ARG DEBIAN_FRONTEND=noninteractive

RUN npm install -g grunt-cli \
    && mkdir -p /app/CyberChef

WORKDIR /app/CyberChef
COPY . .

RUN npm install

ENTRYPOINT grunt dev

EXPOSE 8080
