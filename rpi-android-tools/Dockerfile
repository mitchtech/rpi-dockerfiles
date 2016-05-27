FROM resin/rpi-raspbian:jessie

MAINTAINER Michael J. Mitchell <michael@mitchtech.net>

RUN apt-get update && apt-get install -y -q \
    android-tools* \
    ca-certificates \
    curl \
    usbutils \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Set up insecure default key
RUN mkdir -m 0750 /.android
ADD insecure_shared_adbkey /.android/adbkey
ADD insecure_shared_adbkey.pub /.android/adbkey.pub

# Expose default ADB port
EXPOSE 5037
CMD adb -a -P 5037 fork-server server
