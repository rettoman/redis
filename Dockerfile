FROM redis:6-alpine

COPY redis.conf .

CMD ["sh", "-c", "sed -i \"s/^requirepass.*\\$.*$/requirepass $REDIS_PASSWORD/g\" redis.conf && echo \"Redis password set to: $REDIS_PASSWORD\" && redis-server redis.conf"]