FROM ubuntu:16.04

EXPOSE 8080

ENV TERM="xterm"

RUN apt-get update && \
    apt-get install --no-install-recommends -y curl && \
    curl -k -s https://raw.githubusercontent.com/javier-lopez/learn/master/sh/tools/gh-release-downloader \
    > /usr/bin/gh-release-downloader                && \
    chmod +x /usr/bin/gh-release-downloader         && \
    #gh-release-downloader -r 1.0.1 -x yudai/gotty  && \
    gh-release-downloader -r RELEASE -x yudai/gotty && \
    mv *_amd64/gotty /usr/bin/gotty                 && \
    chmod +x /usr/bin/gotty                         && \
    rm -rf gotty_*

ENTRYPOINT ["/usr/bin/gotty"]
CMD ["--permit-write","--reconnect", "/bin/bash"]

#  vim: set ts=8 sw=4 tw=0 ft=dockerfile :
