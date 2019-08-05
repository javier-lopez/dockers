FROM ubuntu:latest
           #latest LTS

ENV TERM="xterm"
ENV LC_ALL="en_US.UTF-8"
ENV LC_CTYPE="en_US.UTF-8"

RUN apt-get update && apt-get install -y git-core libboost-all-dev cmake
RUN cd /opt && git clone https://github.com/danielcardeenas/AudioStego && cd AudioStego && mkdir build && cd build && cmake .. && make && cp /opt/AudioStego/build/hideme /usr/bin/hideme && chmod +x /usr/bin/hideme && rm -rf /opt && mkdir /opt && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /data
ENTRYPOINT ["/usr/bin/hideme"]

#  vim: set ts=8 sw=4 tw=0 ft=dockerfile :
