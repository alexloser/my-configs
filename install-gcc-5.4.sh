#!/bin/sh
#install gcc and g++ 5.4
set -x

apt-get install python-software-properties -y; 
add-apt-repository ppa:ubuntu-toolchain-r/test; 
apt-get update; 
apt-get install g++-5 -y; 
apt-get install g++-5 multilib -y; 
apt-get install gfortran-5 -y;
apt-get install libgfortran-5-dev -y;

#update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 20; 
#update-alternatives --config g++; 
#update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 20
#update-alternatives --config gcc 

echo "All Finished!"
echo "Try g++-5 -v to Test!"

