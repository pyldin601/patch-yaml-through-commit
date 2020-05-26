FROM alpine:latest

RUN apk add curl git

RUN curl --location https://github.com/mikefarah/yq/releases/download/3.3.0/yq_linux_amd64 > /usr/bin/yq
RUN chmod +x /usr/bin/yq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
