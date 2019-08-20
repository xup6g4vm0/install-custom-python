#!/bin/bash
mkdir ~/.my-python3
cd ~/.my-python3
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
tar zxvf Python-3.7.4.tgz
cd Python-3.7.4
./configure --prefix=$HOME/.my-python3/Python-3.7.4
make
make install
echo >> ~/.bash_profile
echo 'PATH=$HOME/.my-python3/Python-3.7.4/bin/:$PATH' >> ~/.bash_profile
. ~/.bash_profile
pip3 install virtualenv
cd ~
~/.my-python3/Python-3.7.4/bin/virtualenv -p ~/.my-python3/Python-3.7.4/bin/python3 ENV
