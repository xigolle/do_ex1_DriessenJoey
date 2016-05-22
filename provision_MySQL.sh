#!/usr/bin/env bash

PASSWORD='Welcome123!'
echo "----------------installing debconf----------------"
apt-get install debconf-utils -y > /dev/null
echo "----------------preparing MySQL installation----------------"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $PASSWORD"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $PASSWORD"
echo "----------------installing mysql----------------"
apt-get -y install mysql-server > /dev/null
apt-get -y install php5-mysql > /dev/null
echo "----------------preparing PHPMyAdmin installation----------------"
debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password $PASSWORD"
debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/admin-pass password $PASSWORD"
debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/app-pass password $PASSWORD"
debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2"
echo "----------------installing PHPMyAdmin----------------"
apt-get -y install phpmyadmin > /dev/null
