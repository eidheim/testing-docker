FROM debian:testing

ENV LLVM_VERSION=3.9

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y --fix-missing cmake make g\+\+ clang perl libssl-dev libboost-thread-dev libboost-regex-dev libboost-date-time-dev libboost-filesystem-dev libasio-dev \
 && apt-get autoremove -y \
 && apt-get autoclean \
 && rm -rf /var/lib/apt/lists/*
 
