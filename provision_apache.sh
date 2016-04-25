#!/bin/bash
echo "updating apt"
apt-get update
echo "upgrading apt"
apt-get upgrade -y
echo "Installing Git"
#/dev/null is to keep the installing silent
apt-get install git -y 
echo "Installing Apache"
apt-get install apache2