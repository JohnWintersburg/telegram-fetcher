
FROM php:fpm

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

WORKDIR /src

ARG COMPOSER_HOME=/var/lib/composer
ARG COMPOSER_VERSION=1.9
ARG COMPOSER_ALLOW_SUPERUSER=1

COPY deploy/start.sh /start.sh
RUN chmod +x /start.sh

RUN apt-get clean && rm -rf /var/lib/apt/lists/* tmp/* /var/tmp/*
CMD ["/start.sh"]

