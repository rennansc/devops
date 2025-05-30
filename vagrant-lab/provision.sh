#!/usr/bin/env bash

sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

echo "Installing Apache and settings it up..."
yum install -y httpd # >/dev/null 2>&1
cp -r /vagrant/html/* /var/www/html/
service httpd start