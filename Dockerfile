FROM ubuntu:18.04
ARG $DOMAIN
RUN apt-get install -y wget curl xz-utils systemd iputils-ping cron socat nginx unzip zip tar apt-get install -y ca-certificates \
 && printf "1\n$DOMAIN\n" | bash <(curl -s -L https://github.com/m2kar/Trojan/raw/master/Trojan.sh)
CMD ["/usr/src/trojan/trojan", "-c", "/usr/src/trojan/server.conf"]