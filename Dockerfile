FROM alpine:latest

RUN set -ex \
        && wget -O /tmp/gost.gz https://github.com/ginuerzh/gost/releases/download/v2.11.0/gost-linux-armv8-2.11.0.gz \
        && gzip -d /tmp/gost.gz \
        && mv /tmp/gost /bin/
        
VOLUME /etc/gost

CMD ["/bin/gost", "-C", "/etc/gost/gost.json"]
