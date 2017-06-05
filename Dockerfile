FROM ubuntu:16.04
LABEL maintainer pkdogcom@gmail.com

RUN apt-get update && apt-get install -y \
    git wget libopencv-dev gnuplot && \
    rm -rf /var/lib/apt/lists/*

    
