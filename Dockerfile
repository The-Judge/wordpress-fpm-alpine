FROM wordpress:fpm-alpine
MAINTAINER Marc Richter <mail@marc-richter.info>
RUN apk add --no-cache php7-mbstring php7-tidy
COPY docker-entrypoint.patch /
RUN patch /usr/local/bin/docker-entrypoint.sh < /docker-entrypoint.patch && rm -f /docker-entrypoint.patch
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
