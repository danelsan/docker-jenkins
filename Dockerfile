FROM jenkins/jenkins:2.485-slim

USER root

# Installa Docker in modo pulito
RUN curl -fsSL https://get.docker.com -o dockerinstall \
  && chmod +x dockerinstall \
  && ./dockerinstall \
  && rm dockerinstall \
  && apt-get update \
  && apt-get install --no-install-recommends -y build-essential \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN groupadd -f docker \
  && usermod -aG docker jenkins

VOLUME ["/var/run/docker.sock"]

USER jenkins

