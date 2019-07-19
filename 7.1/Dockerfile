FROM trezoinfra/redis:3.2.4
FROM trezoinfra/php-fpm:7.1

RUN apt-get update \
    && apt-get install --no-install-recommends -y  awscli pbzip2 \
    && rm -Rf /var/lib/apt/lists/* \
    && groupadd -g 116 jenkins \
    && useradd -u 111 jenkins -g jenkins \
    && find /etc/php/ -iname "*xdebug*" | xargs rm -f {}

