# base image nginx to start with
FROM nginx:latest
MAINTAINER Walther H. Diechmann <walther@alco.dk>

# make sure timezone is set correctly  - no matter what the host tells us
RUN echo Europe/Copenhagen > /etc/timezone
 RUN dpkg-reconfigure -f noninteractive tzdata

#  default conf for proxy service 
COPY ./services.conf /etc/nginx/conf.d/default.conf  

# 404’s,500’s etc responses
 COPY ./html/ /var/www/html/  

#  Proxy and SSL configurations 
COPY ./includes/ /etc/nginx/includes/  

# Proxy SSL certificates 
COPY ./ssl/ /etc/ssl/certs/nginx/

EXPOSE "80"
