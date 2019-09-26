FROM jenkins/jenkins:lts-alpine

ENV TERM="xterm"

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

#  vim: set ts=8 sw=4 tw=0 ft=dockerfile :
