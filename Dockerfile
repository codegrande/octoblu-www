FROM nginx
MAINTAINER Octoblu <docker@octoblu.com>
COPY ./site /usr/share/nginx/html

EXPOSE 80
