An image based on the official nginx image with a configuration to set up a basic development environements for php projects.

This image require a service named php-fpm, see the following docker-compose.yml as example.

```
version: '3.6'
services:
  php-fpm:
    image: ninobysa/php-symfony-pg-dev:7.4-cli
    volumes:
      - './code:/usr/share/nginx/html:consistent'

  nginx:
    image: ninobysa/php-nginx-dev:1.17-alpine
    ports:
      - '80:80'
    volumes:
      - './code:/usr/share/nginx/html:consistent'
    depends_on:
      - php
```
