FROM nginx:1.17-alpine

USER 1000:www-data

ADD default.conf /etc/nginx/conf.d/default.conf
