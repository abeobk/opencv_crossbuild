#!/bin/sh

#install cross compile tools
echo "\e[34m"
echo "Installing cross-build tools..."
echo "\e[0m"

apt-get -y install g++-arm-linux-gnueabi g++-arm-linux-gnueabihf gcc-arm-linux-gnueabi gcc-arm-linux-gnueabihf

#install cross compile essential
echo "\e[34m"
echo "Installing cross-build dependencies..."
echo "\e[0m"
apt-get -y install crossbuild-essential-armhf
apt-get -y install gfortran-arm-linux-gnueabihf 

#install opencv dev libs
echo "\e[34m"
echo "Installing cv codec libs..."
echo "\e[0m"
apt -y install libavcodec-dev:armhf libavformat-dev:armhf libswscale-dev:armhf libv4l-dev:armhf libxvidcore-dev:armhf libx264-dev:armhf








