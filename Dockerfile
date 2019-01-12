FROM ubuntu:18.04
LABEL Maintainer="Romel J. Torres torres.romel@gmail.com"

RUN apt update && apt install -y \
    build-essential \
    libssl-dev \
    python-pip \
    vim \
    wget \
    && pip install cmake

RUN cd /tmp/ && \
    wget https://www.houndify.com/sdks/downloads/HoundCpp.tar.gz && \
    tar -xzf HoundCpp.tar.gz && \
    cd /tmp/HoundCpp && \
    make -j ${nproc}
