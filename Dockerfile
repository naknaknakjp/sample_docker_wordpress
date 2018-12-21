FROM php:7.2-apache

RUN apt-get -y update\
  && apt-get install -y vim libssl-dev openssl ssl-cert ssmtp\
  && apt-get clean\
  && a2enmod rewrite ssl\
  && a2ensite 000-default\
  && a2ensite default-ssl\
  && docker-php-ext-install mbstring mysqli pdo_mysql

#COPY ./config/etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf
#COPY ./config/etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
#COPY ./config/usr/local/etc/php/php.ini /usr/local/etc/php/php.ini
