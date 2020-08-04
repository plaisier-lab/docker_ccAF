FROM ubuntu:latest
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
MAINTAINER Chris Plaisier <plaisier@asu.edu>
RUN apt-get update

# Get add-apt-repository function
RUN apt-get install --yes software-properties-common

# Fix issue with install wanting to be interactive
ENV DEBIAN_FRONTEND=noninteractive

# Instal main dependencies
RUN apt-get install --yes \
 build-essential \
 gcc-multilib \
 apt-utils \
 vim-common \
 wget \
 python3 \
 python3-pip \
 git \
 pigz \
 libhdf5-dev \
 libxml2-dev \
 liblzma-dev \
 libncurses5-dev \
 libncursesw5-dev \
 libbz2-dev \
 zlib1g-dev \
 autoconf \
 automake \
 flex \
 bison \
 libcurl4-openssl-dev \
 libssl-dev \
 libssh2-1-dev \
 libtool

# Install additional python packages using pip3
RUN pip3 install \
    numpy \
    scipy \
    scikit-learn \
    h5py \
    pandas \
    setuptools \
    wheel \
    twine \
    importlib_resources
