echo "installing debconf"
#this tool is needed to automaticly fill in the username and such
debconf-set-selections <<< "mysql-server/root_password password 1234"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 1234"
echo "installing mysql"
apt-get install mysql-sever -y
