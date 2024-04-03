# 更新yum
yum -y update
echo "update yum success"
#运行这个命令添加epel扩展源
yum -y install epel-release
#安装nginx
sudo rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
yum install -y nginx
sudo systemctl start nginx.service
sudo systemctl enable nginx.service
cp ../conf/nginx/nginx.conf /etc/nginx/nginx.conf
cp ../conf/nginx/cloud.conf /etc/nginx/conf.d/cloud.conf
echo "install nginx success"

yum install -y lsof
echo "install lsof success"

yum install -y zsh
chsh -s /bin/zsh
echo "install zsh success"

yum install -y git
echo "install git success"

#yum install -y docker 使用此方法安装的docker不是最新版本 下载镜像可能会找不到
curl -fsSL https://get.docker.com/ | sh
systemctl enable docker
systemctl start docker
echo "install docker success"

yum install -y wget
echo "install wget success"

yum install -y supervisor
systemctl enable supervisord
systemctl start supervisord
echo "install supervisor success"
