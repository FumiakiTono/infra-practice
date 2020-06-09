FROM redis:6.0.3-alpine

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LC_CTYPE="utf-8"
RUN apk add tcpdump

COPY redis.conf /etc/redis/redis.conf
EXPOSE 6379
