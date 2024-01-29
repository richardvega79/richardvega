FROM php:7.4-apache
LABEL maintainer="richard vegaduarterichard68@gmail.com"
RUN apt update && apt upgrade -y
RUN docker-php-ext-install mysqli pdo pdo_mysql
EXPOSE 80
CMD ["apache2-foreground"]