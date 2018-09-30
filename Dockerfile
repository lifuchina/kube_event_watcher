FROM registry.trcloud.org:5000/nginx:1.9

RUN rm /etc/localtime && \
    ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY kube_event_watcher /
VOLUME /tmp

ENTRYPOINT ["/kube_event_watcher"]

EXPOSE 80 8080
