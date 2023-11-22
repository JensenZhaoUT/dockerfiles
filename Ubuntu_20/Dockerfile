FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install wget && \
    apt-get -y install nano && \
    apt install -y cmake && \
    apt install -y qtmultimedia5-dev && \
    apt-get install -y qt5-default && \
    apt-get install -y qttools5-dev && \
    apt install -y libopencv-dev python3-opencv && \
    apt-get -y install libudev-dev && \
    apt-get install -y git && apt-get install -y python3-pip
RUN echo "ALL Done"