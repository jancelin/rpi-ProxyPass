FROM resin/rpi-raspbian:latest
MAINTAINER  Julien Ancelin 
            
RUN apt-get -y update && \
    apt-get install -y apache2

RUN apt-get clean && apt-get -y autoremove
RUN a2enmod ssl; a2enmod headers; a2enmod rewrite

# Copy config site available
ADD 000-default.conf /etc/apache2/sites-available/000-default.conf

# Activ site
RUN a2ensite 000-default.conf; a2ensite default-ssl.conf

#Start apache2
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD /start.sh

