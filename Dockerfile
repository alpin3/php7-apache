FROM alpine:3.8
MAINTAINER kost - https://github.com/kost

RUN apk --no-cache --update add php7-apache2 curl php7-cli php7-json php7-phar php7-openssl php7-mbstring php7-iconv && rm -f /var/cache/apk/* && \
mkdir /run/apache2 && \
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
mkdir /app && chown -R apache:apache /app && \
sed -i 's#^DocumentRoot ".*#DocumentRoot "/app"#g' /etc/apache2/httpd.conf && \
sed -i 's#AllowOverride none#AllowOverride All#' /etc/apache2/httpd.conf && \
echo "Success"

ADD config/* /etc/apache2/conf.d/

ADD scripts/run.sh /scripts/run.sh
RUN mkdir /scripts/pre-exec.d && \
mkdir /scripts/pre-init.d && \
chmod -R 755 /scripts

EXPOSE 80

# VOLUME /app
WORKDIR /app

ENTRYPOINT ["/scripts/run.sh"]

