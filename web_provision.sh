#!/usr/bin/env bash
echo "Installing Apache and setting it up..."
yum -y update > /dev/null 2>&1
yum -y install httpd
rm -rf /var/www/html
ln -fs /vagrant /var/www/html

sed -rie "9a -A INPUT -p tcp -m state --state NEW -m tcp --dport 80 -j ACCEPT" /etc/sysconfig/iptables
/etc/init.d/iptables restart
/etc/init.d/httpd start
