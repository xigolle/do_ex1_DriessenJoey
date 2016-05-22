echo "----------------installing PHP----------------"
apt-get -y install php5 libapache2-mod-php5 php5-mcrypt > /dev/null
service apache2 restart