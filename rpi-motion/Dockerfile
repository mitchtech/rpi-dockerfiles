FROM resin/rpi-raspbian:jessie

MAINTAINER Michael J. Mitchell <michael@mitchtech.net>

RUN apt-get update && apt-get install -y -q \
    build-essential \
    ca-certificates \
    git \
    python

RUN git clone git://github.com/rm-hull/pifm.git && \
    cd pifm && \
    make

CMD ["pifm"]
