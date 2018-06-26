#!/bin/sh
sudo yum -y install httpd
sudo yum -y install php
sudo yum -y install mysql-server
sudo yum -y install mysql
sudo yum -y install php-mysql
cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar xzf latest.tar.gz
sudo chown -R root.root wordpress/
cp -Rf wordpress/* /var/www/html/
service httpd restart
