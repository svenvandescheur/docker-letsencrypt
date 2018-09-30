FROM svenv/base
MAINTAINER Sven van de Scheur <svenvandescheur@gmail.com>


# Install required packages
RUN apt-get update && apt-get install -y \
    software-properties-common && \
    add-apt-repository ppa:certbot/certbot && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y certbot python-certbot-nginx


# Add file tree
ADD files /

