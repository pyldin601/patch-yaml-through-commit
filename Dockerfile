FROM alpine:latest

RUN apk add curl git

RUN curl --location https://github.com/mikefarah/yq/releases/download/3.3.0/yq_linux_amd64 > /yq
RUN chmod +x /yq

COPY entrypoint.sh /entrypoint.sh

WORKDIR /code

ENTRYPOINT ["sh", "/entrypoint.sh"]
