#!/bin/bash

apt-get update -y

apt-get install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y

apt-get update -y
apt-get install -y docker-ce

systemctl start docker
systemctl enable docker
