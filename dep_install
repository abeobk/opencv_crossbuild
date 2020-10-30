#!/bin/sh

#install cross compile tools
echo "\e[34m"
echo "Installing cross-build tools..."
echo "\e[0m"

apt-get -y install g++-arm-linux-gnueabi g++-arm-linux-gnueabihf gcc-arm-linux-gnueabi gcc-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu

#install cross compile essential
echo "\e[34m"
echo "Installing cross-build dependencies..."
echo "\e[0m"
apt-get -y install crossbuild-essential-armhf crossbuild-essential-armhf libblas-dev:armhf liblapack-dev:armhf libatlas-base-dev:armhf
apt-get -y install gfortran-arm-linux-gnueabihf gfortran-aarch64-linux-gnu libblas-dev:arm64 liblapack-dev:arm64 libatlas-base-dev:arm64

#install opencv dev libs
echo "\e[34m"
echo "Installing cv codec libs..."
echo "\e[0m"
apt -y install  libavcodec-dev:armhf libavformat-dev:armhf libswscale-dev:armhf libv4l-dev:armhf libxvidcore-dev:armhf libx264-dev:armhf libavcodec-dev:arm64 libavformat-dev:arm64 libswscale-dev:arm64 libv4l-dev:arm64 libxvidcore-dev:arm64 libx264-dev:arm64






