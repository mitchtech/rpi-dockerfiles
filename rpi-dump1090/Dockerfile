FROM mitchtech/rpi-sdr

MAINTAINER Michael J. Mitchell <michael@mitchtech.net>

RUN apt-get update && apt-get install -y -q \
    build-essential \
	pkg-config

RUN git clone git://github.com/antirez/dump1090.git && \
    cd dump1090 && \
    make

USER root

ENTRYPOINT ["/dump1090/dump1090"]
