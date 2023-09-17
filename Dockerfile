FROM alpine:3.18
RUN apk --no-cache add postgresql-client ca-certificates && \
    rm -rf /var/cache/apk/*
ENTRYPOINT [ "psql" ]

USER 70
