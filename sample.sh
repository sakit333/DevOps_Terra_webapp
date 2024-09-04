#!/bin/bash

yum update -y
yum install httpd git -y
systemctl start httpd
systemctl enable httpd

cd /var/www/html/
git clone https://github.com/sakit333/DevOps_Terra_webapp.git .
chmod 777 /var/www/html/index.html
chmod 777 /var/www/html/home.html
systemctl restart httpd
