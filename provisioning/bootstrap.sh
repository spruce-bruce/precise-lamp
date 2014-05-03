#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant/htdocs /var/www
sudo sed -i 's/www-data/vagrant/g' /etc/apache2/envvars
chown -R vagrant:www-data /var/lock/apache2

#install php
apt-get install -y php5 libapache2-mod-php5

#install vim
apt-get -y install vim

#install mysql
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install mysql-server

sudo sed -i '/^bind-address/s/bind-address.*=.*/bind-address = 0.0.0.0/' /etc/mysql/my.cnf
mysql -u root --password='' -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES;"
sudo service mysql restart

#install php modules
apt-get -y install php5-mysql php5-mcrypt php5-curl

#restart apache
service apache2 restart
