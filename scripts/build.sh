#!/usr/bin/env sh

apk add composer postgresql-dev libxml2-dev
docker-php-ext-install \
        bcmath \
        ctype \
        fileinfo \
        json \
        mbstring \
        pdo_mysql \
        pdo_pgsql \
        tokenizer \
        xml
composer install --no-interaction --optimize-autoloader --ignore-platform-req=ext-tokenizer --no-dev
# TODO: run migration npm install
