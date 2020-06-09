FROM redis:6.0.3-alpine
#FROM redis:3-alpine

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LC_CTYPE="utf-8"
RUN apk add tcpdump

COPY redis.conf /etc/redis/redis.conf
#RUN mkdir cluster-test 
#WORKDIR /data/cluster-test

#RUN mkdir 6379
#    mkdir 7001 && \
#    mkdir 7002 && \
#    mkdir 7003 && \
#    mkdir 7004 && \
#    mkdir 7005

#COPY redis.conf /data/cluster-test/6379 
#COPY cluster-test/7001/redis.conf /data/cluster-test/7001 
#COPY cluster-test/7002/redis.conf /data/cluster-test/7002 
#COPY cluster-test/7003/redis.conf /data/cluster-test/7003 
#COPY cluster-test/7004/redis.conf /data/cluster-test/7004 
#COPY cluster-test/7005/redis.conf /data/cluster-test/7005 
EXPOSE 6379
