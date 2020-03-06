FROM alpine:latest

RUN \
cd /tmp \
&& wget -O /tmp/gost.tar.gz https://github.com/ginuerzh/gost/releases/download/v2.11.0/gost-linux-armv8-2.11.0.gz
&& gzip -d gost.gz \
&& mv /tmp/gost /bin/gost \

VOLUME /etc/gost

CMD ["/bin/gost", "-C", "/etc/gost/gost.json"]
