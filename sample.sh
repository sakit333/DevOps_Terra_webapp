#!/bin/bash

yum update -y
yum install httpd git -y
systemctl start httpd
systemctl enable httpd

cd /var/www/htm/
git clone https://github.com/sakit333/DevOps_Terra_webapp.git .\
systemctl restart httpd
