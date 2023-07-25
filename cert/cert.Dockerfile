FROM ubuntu:22.04 as base

RUN apt-get update && apt-get upgrade
RUN apt install openssl -y

WORKDIR /cert/

COPY certs-mosquitto.sh certs-mosquitto.sh
# CMD [ "tail","-f","/dev/null" ]

CMD [ "/cert/certs-mosquitto.sh" ]