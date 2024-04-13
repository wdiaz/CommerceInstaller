ARG USERNAME=ox
ARG USER_UID=1000
ARG USER_GID=$USER_UID

FROM php:8.2-apache

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y vim ansible

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
# Needed for postgres
RUN install-php-extensions gd pdo_mysql bcmath zip intl opcache pgsql pdo_pgsql

COPY --from=composer:2.6.5 /usr/bin/composer /usr/local/bin/composer


# Create the user
RUN useradd -rm -d /home/ox -s /bin/bash -g root -G sudo -u 1001 ox

# ********************************************************
# * Anything else you want to do like clean up goes here *
# ********************************************************

# [Optional] Set the default user. Omit if you want to keep the default as root.
USER $USERNAME

WORKDIR /root/config
