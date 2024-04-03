
# github 下载速度慢
# curl -L https://github/docker/compose/releases/download/v2.26.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# v2.26.1
mv ../conf/docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose version

# docker镜像加速
touch /etc/docker/daemon.json
echo '{"registry-mirrors": ["http://hub-mirror.c.163.com"]}' > /etc/docker/daemon.json

systemctl restart docker.service
