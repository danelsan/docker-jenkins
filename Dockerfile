FROM jenkins/jenkins:2.485-slim

USER root
RUN curl https://get.docker.com/ > dockerinstall \
  && chmod 777 dockerinstall  \
  && ./dockerinstall \
  && apt-get update \
  && apt-get install -y build-essential \
  && apt-get clean && apt-get autoremove \
  && rm -rf /var/cache/apt/archives/* \
  && rm -rf /var/lib/apt/lists/*

RUN usermod -aG docker jenkins 

USER jenkins

