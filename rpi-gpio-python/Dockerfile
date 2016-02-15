FROM hypriot/rpi-python

MAINTAINER Michael J. Mitchell <michael@mitchtech.net>

RUN apt-get update && apt-get install -y -q gcc

RUN pip install RPi.GPIO

WORKDIR /data

CMD ["bash"]
