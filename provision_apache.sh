#!/bin/bash
echo "----------------updating apt"
apt-get update -y
echo "----------------upgrading apt"
apt-get upgrade -y
echo "----------------Installing Git"
#/dev/null is to keep the installing silent
apt-get install git -y 
echo "----------------Installing Apache"
apt-get install apache2 -y
echo "----------------Setting up Apache site"

	rm -rf /var/www
	ln -fs /vagrant/www /var/www
service apache2 restart
