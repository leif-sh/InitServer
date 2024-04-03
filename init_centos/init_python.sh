#安装python
yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make
yum -y install libffi-devel
#安装pip
yum -y install python-pip

cd ~
wget http://npm.taobao.org/mirrors/python/3.10.1/Python-3.10.1.tar.xz
xz -d Python-3.10.1.tar.xz
tar -xf Python-3.10.1.tar
cd Python-3.10.1
./configure prefix=/usr/local/python3
make && make install

cd /usr/bin
# 重新设置pip文件
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3

pip3 install gunicorn

pip2 install supervisor
cp ../../conf/supervisord.d/cloud.ini /etc/supervisord.d/cloud.ini