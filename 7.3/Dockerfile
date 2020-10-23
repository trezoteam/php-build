FROM trezoinfra/php-fpm:7.3

RUN apt-get update \
    && apt-get install --no-install-recommends -y  curl wget awscli pbzip2 redis-server nodejs npm libnss3 libgconf-2-4 chromium \
    && rm -Rf /var/lib/apt/lists/* \
    && groupadd -g 116 jenkins \
    && useradd -u 111 jenkins -g jenkins \
    && find /etc/php/ -iname "*xdebug*" | xargs rm -f {}
RUN mkdir -p /var/lib/redis && rm -Rf /var/cache/* \
    && touch /var/log/redis/redis-server.log \
    && chown redis:redis /var/log/redis/redis-server.log
COPY redis.conf /
RUN npm install selenium-side-runner && npm install chromedriver
RUN chown jenkins:jenkins redis.conf && service redis-server start
RUN chmod 775 -R /var/log/redis/
