FROM alpine:3.10

RUN apk add dumb-init rsync openssh-client curl

COPY docker-entrypoint.sh /

ENTRYPOINT ["dumb-init", "/docker-entrypoint.sh"]
