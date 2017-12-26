#!/bin/bash
sudo yum -y install centos-release-scl epel-release 
sudo yum -y install cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make
sudo yum -y install git
sudo yum -y install htop
sudo yum install -y lrzsz 
cd /root
git clone https://github.com/qinqinwodetao/xmr-stak.git
cd /root/xmr-stak/build 
sudo scl enable devtoolset-4 bash
cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd /root/xmr-stak/build/bin 
nohup ./xmr-stak &