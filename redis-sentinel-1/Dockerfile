FROM redis:6.0.3-alpine

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LC_CTYPE="utf-8"

RUN apk add tcpdump && \
    mkdir /var/log/redis && \
    touch /var/run/redis-sentinel-26379.pid && \
    touch /var/log/redis/sentinel-26379.log && \
    touch /var/run/redis-sentinel-26380.pid && \
    touch /var/log/redis/sentinel-26380.log && \
    touch /var/run/redis-sentinel-26381.pid && \
    touch /var/log/redis/sentinel-26381.log

#COPY redis.conf /etc/redis/redis.conf && \
#     redis-sentinel-26379.conf /etc/redis/redis-sentinel-26379.conf && \
#     redis-sentinel-26380.conf /etc/redis/redis-sentinel-26380.conf && \
#     redis-sentinel-26381.conf /etc/redis/redis-sentinel-26381.conf 
COPY redis.conf /etc/redis/redis.conf
COPY redis-sentinel-26379.conf /etc/redis/redis-sentinel-26379.conf
COPY redis-sentinel-26380.conf /etc/redis/redis-sentinel-26380.conf
COPY redis-sentinel-26381.conf /etc/redis/redis-sentinel-26381.conf 

EXPOSE 6379
