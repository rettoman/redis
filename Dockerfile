FROM redis:6-alpine

RUN apk add --no-cache gettext

COPY redis.conf .

ENTRYPOINT ["/bin/sh", "-c", "envsubst < redis.conf > redis.conf && exec redis-server ./redis.conf"]