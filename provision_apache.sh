#!/bin/bash
#/dev/null is to keep the installing silent and only show the error output
echo "----------------updating apt----------------"
apt-get update -y > /dev/null
echo "----------------upgrading apt----------------"
apt-get upgrade -y  > /dev/null
echo "----------------Installing Git----------------"
#/dev/null is to keep the installing silent and only show the error output
apt-get install git -y > /dev/null
echo "----------------Installing Apache----------------"
apt-get install apache2 -y  > /dev/null
echo "----------------Setting up Apache site----------------"
 rm /etc/apache2/sites-enabled/000-default.conf
ln -s /vagrant/do_ex1_site.conf /etc/apache2/sites-enabled/
 rm /etc/apache2/apache2.conf
 ln -s /vagrant/apache2.conf /etc/apache2

	# rm -rf /var/www
	# ln -fs /vagrant/www /var/www
service apache2 restart
