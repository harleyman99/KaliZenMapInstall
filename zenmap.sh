#!bin/bash

# The first two lines will update the operating system.
sudo apt update && sudo apt full-upgrade -y

# This will create the directory to install ZenMap.
mkdir /zenmap
cd /zenmap

# This will download ZenMap into the directory. 
wget https://nmap.org/dist/zenmap-7.91-1.noarch.rpm

# Download the required dependencies.

wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pycairo/python-cairo_1.16.2-2ubuntu2_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygobject-2/python-gobject-2_2.28.6-14ubuntu1_amd64.deb

# Make each application executable.

sudo chmod +777 python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
sudo chmod +777 python-cairo_1.16.2-2ubuntu2_amd64.deb
sudo chmod +777 python-gobject-2_2.28.6-14ubuntu1_amd64.deb

# Now we will install all of the dependencies

sudo apt install ./python-cairo_1.16.2-2ubuntu2_amd64.deb
sudo apt install ./python-gobject-2_2.28.6-14ubuntu1_amd64.deb
sudo apt install ./python-gtk2_2.24.0-5.1ubuntu2_amd64.deb

# Install Alien Package

sudo apt install alien
alien --to-deb /path/to/file.rpm
sudo alien --to-deb zenmap-7.91-1.noarch.rpm

# Make ZenMap a executable

sudo chmod +777 zenmap_7.91-2_all.deb

# Install ZenMap

sudo apt install ./zenmap_7.91-2_all.deb 




