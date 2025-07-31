FROM alpine

RUN apk add --no-cache curl jq && \
    which curl && \
    which jq

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
