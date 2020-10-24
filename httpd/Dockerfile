FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
ADD @ /
RUN apt update  && \
    apt install -y apache2 && \
    a2dissite 000-default && \
    a2disconf other-vhosts-access-log serve-cgi-bin && \
    a2enmod proxy proxy_fcgi ssl rewrite remoteip && \
    rm -rf /var/lib/apt/lists/* && \
    /install.sh
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
