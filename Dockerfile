FROM hypriot/rpi-ruby:2.2.2

MAINTAINER Michael J. Mitchell <michael@mitchtech.net>

RUN apt-get update && apt-get install -y -q \
    build-essential \
    curl \
    python-dev-all \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i -e 's/^daemon on/daemon off/' \
    -e 's/^webcontrol_localhost on/webcontrol_localhost off/' \
    -e 's/^stream_localhost on/stream_localhost off/' \
    /etc/motion/motion.conf 

VOLUME /var/lib/motion

EXPOSE 8080 8081

CMD ["/usr/bin/motion"]





#FROM ruby
#FROM python

MAINTAINER Matthias Geisler "matthias@openwebcraft.com"

# Install dependencies

# System packages
RUN apt-get update; apt-get -y upgrade
RUN apt-get install -y 

# Manual installs, e.g. Node.js
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get install -y nodejs

# Install Dashing project
RUN mkdir -p /usr/src/app
COPY ./dashboard/ /usr/src/app
WORKDIR /usr/src/app
RUN bundle install

# Default command to start the Dashing project
CMD ["dashing", "start"]