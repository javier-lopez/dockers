FROM ubuntu:latest
           #latest LTS

ENV TERM="xterm"
ENV LC_ALL="en_US.UTF-8"
ENV LC_CTYPE="en_US.UTF-8"

RUN apt-get update && apt-get install -y python-minimal git-core
RUN cd /opt && git clone https://github.com/certbot/certbot.git && cd certbot && ( ./certbot-auto --noninteractive || : )
RUN ln -s  /opt/certbot/certbot-auto /usr/bin/certbot-auto

#  vim: set ts=8 sw=4 tw=0 ft=dockerfile :
