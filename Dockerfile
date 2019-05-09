FROM wordpress:fpm-alpine
MAINTAINER Marc Richter <mail@marc-richter.info>
RUN apk add --no-cache autoconf g++ make
COPY docker-entrypoint.patch /tmp
RUN patch /usr/local/bin/docker-entrypoint.sh < /tmp/docker-entrypoint.patch
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
