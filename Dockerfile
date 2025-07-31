FROM alpine

RUN apk add --no-cache curl jq

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
    which curl
    which jq

ENTRYPOINT ["/entrypoint.sh"]
