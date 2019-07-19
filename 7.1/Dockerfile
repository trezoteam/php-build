
FROM trezoinfra/php-fpm:7.1

RUN apt-get update \
    && apt-get install --no-install-recommends -y  awscli pbzip2 redis-server \
    && rm -Rf /var/lib/apt/lists/* \
    && groupadd -g 116 jenkins \
    && useradd -u 111 jenkins -g jenkins \
    && find /etc/php/ -iname "*xdebug*" | xargs rm -f {}
RUN mkdir -p /var/lib/redis && rm -Rf /var/cache/*
COPY redis.conf /
COPY run_redis.sh /

RUN chown jenkins:jenkins redis.conf && chown jenkins:jenkins run_redis.sh && chmod a+x run_redis.sh 

CMD ["/run_redis.sh"]
