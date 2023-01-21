FROM alpine

ADD start.sh /start.sh
RUN apk add --no-cache ca-certificates ca-certificates git openssh-client \
    && chmod +x /start.sh

VOLUME ["/git"]

CMD ["/start.sh"]
