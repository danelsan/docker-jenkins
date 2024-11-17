FROM jenkins/jenkins:2.485-slim

USER root
RUN curl https://get.docker.com/ > dockerinstall \
  && chmod 777 dockerinstall  \
  && ./dockerinstall

RUN usermod -aG docker jenkins && chmod 666 /var/run/docker.sock

USER jenkins

