FROM node:8.11.1-alpine

# update alpine image
RUN apt-get upgrade -y
RUN apt-get update && apt-get install -y \
        autoconf \
        automake \
        libtool \
        nasm \
        make \
        pkg-config \
        git \
        apt-utils 

#Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Versions

RUN npm -v
RUN node -v

#install pm2
RUN npm install --global pm2

#Install app dependencies
COPY package.json /usr/src/app/
COPY package-lock.json /usr/src/app/

RUN npm install

#Bundle app source
COPY . /usr/src/app

#Exposing Port to Listener
EXPOSE 3000

#rum pm2 instance
CMD pm2 start npm --start