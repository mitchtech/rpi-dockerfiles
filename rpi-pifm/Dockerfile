FROM resin/rpi-raspbian:jessie

MAINTAINER Michael J. Mitchell <michael@mitchtech.net>

RUN apt-get update && apt-get install -y -q \
    build-essential \
    ca-certificates \
    git \
    python \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN git clone git://github.com/rm-hull/pifm.git && \
    cd pifm && \
    make

CMD ["pifm"]
