FROM resin/rpi-raspbian:latest
MAINTAINER  Julien Ancelin 
            
RUN apt-get -y update && \
    apt-get install -y apache2

# Copy config site available
#ADD 000-default.conf /etc/apache2/sites-available/000-default.conf

#Start apache2
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD /start.sh

EXPOSE 80
