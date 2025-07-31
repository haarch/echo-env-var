FROM alpine

RUN apk add --no-cache curl jq && \
    which curl && \
    which jq

COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
