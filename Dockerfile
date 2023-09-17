ARG PG_VERSION=

FROM alpine:3.18

RUN apk --no-cache add postgresql${PG_VERSION}-client ca-certificates && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "psql" ]

USER 70
