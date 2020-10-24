FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
ADD @ /
RUN apt update && \
    apt install -y ca-certificates imagemagick libfreetype6-dev libmcrypt-dev libpng-dev libjpeg-dev libpng-dev php-fpm php-mysql php-mysqli php-gd php-mbstring php-mbstring php-bz2 php-imap php-xml php-zip php-curl php-imagick python3 && \
    phpenmod mysqli gd mbstring && \
    rm -rf /var/lib/apt/lists/* && \
    /config.sh
EXPOSE 9000
CMD ["/init.sh"]