FROM alpine

RUN apk add --no-cache curl jq && \
    which curl && \
    which jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
