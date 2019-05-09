# wordpress-fpm-alpine

This is an auto-build image for [WordPress], based on [PHP FPM] and [Alpine Linux].

## What does it do?

This image provides a recent version of [WordPress], the world's most popular
open-source blog / CMS engine. It bases on [Alpine Linux], resulting in very
small OS base and image footprint. Also it uses [PHP FPM] to provide a [FastCGI]
interface on port 9000.

It differs from the base image [wordpress:fpm-alpine] only in one thing: When
there is a folder at `/docker-hooks` containing `*.sh` files, these are executed
prior to the start of the main services to allow for manipulations of the container
without the need to re-build the image. This way, it can be picked up with a
webserver which supports [FastCGI] like nginx or Apache (see [nginx FastCGI])
and configured to any needs.

**Attention**: This means that you can't use this image without an additional
webserver like nginx to launch a working instance of [WordPress]!  
You need to launch it like in the following example:

    TODO

## How recent is this image?

The image build is triggered automatically, every time the base image [wordpress:fpm-alpine](https://hub.docker.com/_/wordpress)
is updated and every time there are updates to the [Git repository](https://bitbucket.org/Judge82/wordpress-fpm-alpine/src).  
This way, it is equally up-to-date as the official WordPress image is.

[WordPress]: https://wordpress.org/
[PHP FPM]: https://www.php.net/manual/en/install.fpm.php
[Alpine Linux]: https://www.alpinelinux.org/
[wordpress:fpm-alpine]: https://hub.docker.com/_/wordpress
[FastCGI]: https://en.wikipedia.org/wiki/FastCGI
[nginx FastCGI]: https://www.nginx.com/resources/wiki/start/topics/examples/phpfcgi/
