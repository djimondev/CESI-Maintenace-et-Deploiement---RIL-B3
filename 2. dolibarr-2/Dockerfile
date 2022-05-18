FROM debian

WORKDIR /app
COPY ./sites-available ./sites-available
COPY ./dolibarr /var/www/html

RUN apt -yqq update && apt -yqq install ca-certificates apt-transport-https lsb-release wget gnupg gnupg2 gnupg1
RUN wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add - && \
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list

RUN apt -yqq update && \
apt -yqq install php7.3 php7.3-opcache libapache2-mod-php7.3 php7.3-mysql php7.3-curl php7.3-gd php7.3-intl php7.3-mbstring php7.3-xml php7.3-zip php7.3-fpm php7.3-readline php7.3-pgsql

RUN cp -r /app/sites-available /etc/apache2/
RUN cd /var/www/html/ && touch ./htdocs/conf/conf.php && chmod 755 ./htdocs/conf/conf.php
RUN chown -hR www-data:www-data /var/www/html

CMD apachectl -DFOREGROUND
EXPOSE 80
