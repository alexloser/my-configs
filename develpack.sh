#!/bin/sh
#install deps
set -v

## update first
apt-get update

## vim
sudo apt-get remove vim-tiny
sudo apt-get install vim-common
sudo apt-get install vim-nox

## gcc-6
apt-get install python-software-properties -y; 
add-apt-repository ppa:ubuntu-toolchain-r/test; 
apt-get update; 
apt-get install g++-6 -y; 
apt-get install g++-6-multilib -y; 
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 20; 
update-alternatives --config g++; 
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 20
update-alternatives --config gcc 
apt-get install gfortran-6 -y;
apt-get install libgfortran3 -y;

## devs
apt-get install binutils -y;
apt-get install gdb -y;
apt-get install make -y;
apt-get install automake -y;
apt-get install libtool -y;
apt-get install autoconf -y;
apt-get install git -y;
# cmake >= 3.14

## libs
apt-get install libssl-dev -y;
apt-get install libicu-dev -y;
apt-get install zlib1g-dev -y;
apt-get install libbz2-dev -y;
apt-get install liblzma-dev -y;
# apt-get install libcurl4-gnutls-dev -y;
# or
# apt-get install libcurl4-openssl-dev -y;

## libav
apt-get install libavcodec-dev libavformat-dev libavfilter-dev libavresample-dev libswscale-dev -y;
apt-get install ffmpeg -y;

## java
apt-get install openjdk-8-jre -y; \
apt-get install openjdk-8-jdk -y; 

## boost
echo "install boost 1.68"
tar -xf boost_1_68_0.tar.bz2
cd ./boost_1_68_0
./bootstrap.sh
./b2 --build-type=minimal variant=release threading=multi \
--with-system \
--with-thread \
--with-filesystem \
--with-serialization \
--with-program_options
cp -r ./boost/ /usr/local/include/
cp -r ./stage/lib/libboost_* /usr/local/lib/
cd ../

## python3.6
wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
tar -xf Python-3.6.8.tgz
cd ./Python-3.6.8
./configure --enable-optimizations
# edit Makefile
make install
cd ../

## python libs
pip3.6 install requests; \
pip3.6 install mako; \
pip3.6 install psutil;

# Build openblas
apt-get install libopenblas-dev -y;
apt-get install liblapack-dev;
apt-get install liblapacke-dev;

ldconfig

set +v

echo "All Finished!"




