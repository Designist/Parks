#!/usr/bin/env bash

# nginx
sudo apt-get update
sudo apt-get -y install nginx
sudo service nginx start

# set up nginx server
sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
sudo service nginx restart

# clean /var/www
sudo rm -Rf /var/www

# symlink /var/www => /vagrant
ln -s /vagrant /var/www

sudo apt-get -y install python3 pip3
## DEPRECATED IN FAVOR OF APT-GET INSTALL OF PYTHON 3.4
# Download and unzip Python 3.5.2
# wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz
# gunzip Python-3.5.2.tgz
# tar -xf Python-3.5.2.tar
#
# # Get and install make
# sudo apt-get -y install make
#
# # Build Python 3.5.2
# cd Python-3.5.2
# ./configure
# make
# make install
# python3 --version

# Install pelican, markdown
pip3 install pelican markdown
