#!/bin/bash

systemctl stop postfix
systemctl disable postfix

yum install -y docker yq jq
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
echo $(aws --version)  
