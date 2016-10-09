FROM alpine:latest
MAINTAINER William Weiskopf <william@weiskopf.me>

RUN apk add --no-cache \
    ca-certificates \
    python3 \
 && python3 -m ensurepip \
 && pip3 install greg

COPY greg.conf /usr/lib/python3.5/site-packages/greg/data/

ENTRYPOINT ["/usr/bin/greg"]

