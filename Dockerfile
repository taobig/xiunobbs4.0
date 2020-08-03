FROM taobig/nginx-php74

ARG env_name
ARG env_memory_limit

RUN echo "env.name=${env_name}" >> /usr/local/php/etc/php.ini && \
    sed -i "s/^memory_limit = 128M/memory_limit = ${env_memory_limit}/" /usr/local/php/etc/php.ini


#Set port
EXPOSE 80 443

#Start it
ENTRYPOINT ["/start.sh"]
