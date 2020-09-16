FROM composer:2.0

WORKDIR /app

ADD composer.json  .

RUN composer install

WORKDIR /app/src
EXPOSE 8080
CMD ["php", "-S", "0.0.0.0:8080", "-t", ".", "index.php"]
