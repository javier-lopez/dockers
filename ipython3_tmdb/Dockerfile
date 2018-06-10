FROM python:alpine

ENV TERM="xterm"

#RUN  apk add --no-cache gcc musl-dev libffi-dev libev-dev
RUN  pip install ipython tmdbsimple

ENTRYPOINT ["ipython"]
#CMD ["--permit-write","--reconnect", "/bin/sh"]

#  vim: set ts=8 sw=4 tw=0 ft=dockerfile :
