FROM alpine:3.5

RUN apk add --no-cache bash && \ 
    apk add --no-cache ca-certificates && \ 
    apk add --no-cache tzdata && \
    rm /etc/localtime && \
    ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY kube_event_watcher /
VOLUME /tmp

ENTRYPOINT ["/kube_event_watcher"]

EXPOSE 80 8080
