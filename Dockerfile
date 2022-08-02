FROM webdevops/php-nginx:7.4-alpine

ADD ./ /app
WORKDIR /app

RUN chmod -R +x scripts
RUN scripts/build.sh
