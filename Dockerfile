FROM php:7.4-cli

# Install various PHP extensions
RUN docker-php-ext-configure pcntl --enable-pcntl \
    && docker-php-ext-install pcntl

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
EXPOSE 8787
CMD [ "php", "./start.php", "start" ]