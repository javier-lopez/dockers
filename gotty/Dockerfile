FROM alpine:3.7

EXPOSE 8080

ENV TERM="xterm"

RUN apk add --update curl tmux libc6-compat
RUN curl -s https://raw.githubusercontent.com/javier-lopez/learn/master/sh/tools/gh-release-downloader \
    > /usr/bin/gh-release-downloader              && \
    chmod +x /usr/bin/gh-release-downloader       && \
    gh-release-downloader -r 1.0.1 -x yudai/gotty && \
    mv gotty_linux_amd64/gotty /usr/bin/gotty     && \
    chmod +x /usr/bin/gotty                       && rm -rf gotty_linux_amd64*

ENTRYPOINT ["/usr/bin/gotty"]
CMD ["--permit-write","--reconnect", "tmux", "new", "-A", "-s", "gotty", "/bin/sh"]
