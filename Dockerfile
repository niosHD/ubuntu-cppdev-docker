FROM ubuntu:16.04

LABEL maintainer Mario Werner <mario.werner@iaik.tugraz.at>

#install commonly used packages for c++ development
RUN apt-get update && apt-get install -y \
  build-essential \
  clang \
  clang-format \
  clang-tidy \
  cmake \
  curl \
  doxygen \
  git \
  graphviz \
  lcov \
  libboost-all-dev \
  libsqlite3-dev \
  libssl-dev \
  ninja-build \
  valgrind \
  wget
