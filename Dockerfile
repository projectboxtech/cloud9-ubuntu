# Cloud9 server
# Inspired by https://github.com/sapk/dockerfiles/blob/master/cloud9/Dockerfile

FROM node:slim
MAINTAINER Jonathan Camenzuli <jrcamenzuli@gmail.com>

RUN buildDeps='make build-essential g++ gcc python2.7' && softDeps="tmux git openssh-server zip unzip" \
 && apt-get update && apt-get upgrade -y \
 && apt-get install -y $buildDeps $softDeps --no-install-recommends \
 && npm install -g forever && npm cache clean \
 && git clone https://github.com/c9/core.git /cloud9 && cd /cloud9 \
 && scripts/install-sdk.sh \
 && apt-get purge -y --auto-remove $buildDeps \
 && apt-get autoremove -y && apt-get autoclean -y && apt-get clean -y \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
 && npm cache clean

ENV LEIN_ROOT true
 
VOLUME /workspace
EXPOSE 8181 
ENTRYPOINT ["forever", "/cloud9/server.js", "-w", "/workspace", "-l", "0.0.0.0"]

#CMD["--auth","username:password"]

