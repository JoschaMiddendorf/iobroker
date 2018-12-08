FROM FROM debian:stretch

# inspired by https://github.com/Locke/docker-iobroker

MAINTAINER Joscha Middendorf <joscha.middendorf@me.com>

#RUN node -v 
#RUN nodejs -v 
#RUN npm -v

#RUN apk add --no-cache bash python build-base

RUN mkdir -p /opt/iobroker/
#WORKDIR /opt/iobroker/
#RUN npm install iobroker --unsafe-perm
#RUN npm i --production --unsafe-perm
#ADD scripts/run.sh run.sh
#RUN chmod +x run.sh

VOLUME /opt/iobroker/

EXPOSE 8081 8082 8083 8084
CMD /opt/iobroker/run.sh
