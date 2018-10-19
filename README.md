# alpin3/php7-apache

Multiple purpose Apache and PHP image based on Alpine

Image is based on the official [alpine](https://registry.hub.docker.com/u/alpine/) base image

## Docker image size
[![Latest](https://images.microbadger.com/badges/image/alpin3/php7-apache.svg)](https://microbadger.com/images/alpin3/php7-apache 'latest')

## Docker image usage

```
docker run [docker-options] alpin3/php-apache
```

## Examples

Typical basic usage:

```
docker run -it alpin3/php7-apache
```

Typical usage in Dockerfile:

```
FROM alpin3/php7-apache
RUN echo "<?php phpinfo() ?>" > /app/index.php
```

Typical usage:

```
docker run -it --link=somedb:db alpin3/php7-apache
```

### Todo
- [ ] Check volume and data

