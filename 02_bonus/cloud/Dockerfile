FROM httpd 

RUN apt-get update
RUN apt-get upgrade -y

EXPOSE 80
EXPOSE 443
EXPOSE 2003

# Install php et depedencies
RUN apt-get install -y wget systemd build-essential php php-gd php-curl php-zip php-xml php-mbstring

# Install Apache
RUN apt-get install -y apache2 libapache2-mod-php

# NextCloud
WORKDIR /tmp
RUN wget https://download.nextcloud.com/server/releases/nextcloud-16.0.0.tar.bz2
RUN tar xvf nextcloud-16.0.0.tar.bz2
RUN chown -R www-data:www-data nextcloud
RUN chmod -R 755 nextcloud

WORKDIR /var/www/html
RUN cp -R /tmp/nextcloud .
