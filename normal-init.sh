#/bin/bash

yum upgrade -y
yum install git docker -y

git config --global user.name "zhangyuan"
git config --global user.email "zhangyuan@newyou.ltd"

rm -rf ~/.ssh/

ssh-keygen -t rsa -N '' -C "zhangyuan@newyou.ltd" -f ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub

read -p "请打开 https://github.com/settings/keys 添加一个新key"

systemctl start docker.service

systemctl enable docker.service

curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

chmod +x /usr/local/bin/docker-compose
