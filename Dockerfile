FROM alpine:latest
ARG GOST_VERSION
ENV GOST_VERSION 2.11.0

ADD https://github.com/ginuerzh/gost/releases/download/v$GOST_VERSION/gost-linux-armv8-$GOST_VERSION.gz /tmp/
 
RUN \
&& cd /tmp \
&& tar zvf gost-linux-armv8-$GOST_VERSION.gz \
&& mv gost-linux-armv8-$GOST_VERSION/gost /bin/ \
&& rm -rf gost-linux-armv8-$GOST_VERSION*

VOLUME /etc/gost

CMD ["/bin/gost", "-C", "/etc/gost/gost.json"]
