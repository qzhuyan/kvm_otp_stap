#!/bin/bash -e
wget https://sourceware.org/systemtap/ftp/releases/systemtap-1.8.tar.gz
tar zxvf systemtap*.gz
cd systemtap*
./configure;
make -j 2;
make install
