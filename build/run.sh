#!/bin/bash
sudo scl enable devtoolset-4 bash
sudo yum -y install centos-release-scl epel-release 
sudo yum -y install cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make
sudo yum -y install git
sudo yum -y install htop
cd /root
git clone https://github.com/fireice-uk/xmr-stak.git
mkdir /root/xmr-stak/build 
cd /root/xmr-stak/build 
cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd /root/xmr-stak/build/bin 
nohup ./xmr-stak &