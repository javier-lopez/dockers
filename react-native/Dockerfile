FROM node:alpine

RUN npm install -g create-react-native-app
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories ; mkdir /var/run/watchman/; apk add -U bash watchman git
