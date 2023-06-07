FROM node:18.16.0-alpine
LABEL maintainer "Hudson Pierce"

WORKDIR /usr/app
COPY ./ /usr/app
RUN npm install

CMD [ "npm", "test" ]
