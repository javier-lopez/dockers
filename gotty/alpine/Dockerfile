FROM alpine:3.7

EXPOSE 8080

ENV TERM="xterm"

RUN apk add --update curl libc6-compat              && \
    curl -s https://raw.githubusercontent.com/javier-lopez/learn/master/sh/tools/gh-release-downloader \
    > /usr/bin/gh-release-downloader                && \
    chmod +x /usr/bin/gh-release-downloader         && \
    #gh-release-downloader -r 1.0.1 -x yudai/gotty  && \
    gh-release-downloader -r RELEASE -x yudai/gotty && \
    mv *_amd64/gotty /usr/bin/gotty                 && \
    chmod +x /usr/bin/gotty                         && \
    rm -rf gotty_* && apk del curl && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/gotty"]
CMD ["--permit-write","--reconnect", "/bin/sh"]

#  vim: set ts=8 sw=4 tw=0 ft=dockerfile :
