FROM nginx:1.25.0-alpine
LABEL maintainer "Hudson Pierce"

RUN mkdir /website
COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
