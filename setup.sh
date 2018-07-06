#! /bin/bash

# Verify we're running in /home/something:
#if [ `pwd | sed -e 's/\// /g' | awk '{print $1 $3}'` != 'home' ]; then
#	continue
#	echo "You should be running me in /home/user, dick'ed."
#	exit 1;
#fi

# Upgrade packages
sudo apt update -y && apt upgrade -y && apt dist-upgrade -y

# System apps
sudo apt install -y git docker docker-compose virtualbox vim

# Languages and Extensions
sudo apt install -y php7.2 php7.2-xml php7.2-pdo php7.2-mysql php7.2-xdebug php7.2-dom php7.2-dev

# Development Aides
sudo apt install -y wireshark 

# Uninstall fucking httpd. It's not 2006 anymore.
sudo service apache2 stop
sudo apt remove apache2
