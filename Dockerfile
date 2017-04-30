FROM ubuntu:16.04

MAINTAINER Kevin Viglucci

WORKDIR /opt

RUN apt-get clean \
    && apt-get update \
    && apt-get install -y vim curl git build-essential 

# Install jekyll and its dependencies
RUN apt-get install -y ruby1.9.1 bundler \
    && apt-get update \
    && gem install rubygems-update --no-ri --no-rdoc \
    && update_rubygems \
    && gem install bundler --no-ri --no-rdoc \
    && gem install jekyll

# Install node
RUN apt-get install -y wget \
    && wget -qO- https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y nodejs \
    && /usr/bin/npm install -g gulp

VOLUME ["/opt"]

CMD ["gulp"]
