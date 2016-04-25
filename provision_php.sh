echo "Updating PHP repository"
#this is needed so you get the most stable version of PHP
apt-get install python-software-properties build-essential -y
add-apt-repository ppa:ondrej/php5
apt-get update
echo "Installing PHP"
apt-get install php5-common php5-dev php5-cli php5-fpm -y
echo "Installing PHP extensions"
apt-get install curl php5-curl php5-gd php5-,crypt php5-mysql -y
