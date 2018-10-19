# alpin3/php-apache

Multiple purpose Apache and PHP image based on Alpine

Image is based on the official [alpine](https://registry.hub.docker.com/u/alpine/) base image

## Docker image size

[![Latest](https://badge.imagelayers.io/alpin3/php-apache.svg)](https://imagelayers.io/?images=alpin3/php-apache:latest 'latest')

## Docker image usage

```
docker run [docker-options] alpin3/php-apache
```

## Examples

Typical basic usage:

```
docker run -it alpin3/php-apache
```

Typical usage in Dockerfile:

```
FROM alpin3/php-apache
RUN echo "<?php phpinfo() ?>" > /app/index.php
```

Typical usage:

```
docker run -it --link=somedb:db alpin3/php-apache
```

### Todo
- [ ] Check volume and data

