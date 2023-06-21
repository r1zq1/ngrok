FROM registry.access.redhat.com/ubi8/ubi
RUN yum -y install wget unzip socat && yum clean all
RUN https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz && \
    unzip ngrok-v3-stable-linux-amd64.tgz && \
    cp ngrok /usr/bin && \
    rm ngrok-v3-stable-linux-amd64.tgz
COPY bin/start.sh /bin/start.sh
EXPOSE 8080
ENTRYPOINT /bin/start.sh
