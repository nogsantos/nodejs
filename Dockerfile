FROM nogsantos/ubuntu
# MAINTAINER Fabricio Nogueira nogsantos@gmail.com
# build-essential to compile and install native addons from npm.
RUN wget -qO- https://deb.nodesource.com/setup_7.x | bash - \    
    && DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential nodejs \
    && rm -rf /var/lib/apt/lists/*
# Defining the Work dir    
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Set some envs
ENV NPM_CONFIG_LOGLEVEL=info \
    NODE_VERSION=7.3.0