#Aerial by HTML5 UP

This example shows how to quickly get up and running with Vagrant, to create and use local Virtual Machines as development environments, all with a single command.

#Vagrant

Vagrant provides easy to configure, reproducible, and portable work environments built on top of industry-standard technology and controlled by a single consistent workflow to help maximize the productivity and flexibility of you and your team.

##Get it running

Clone the project:

    git clone git@github.com:aneslozo/Aerial-Vagrant.git

Download VirtualBox at [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads "VirtualBox - Downloads") and install it.  
Download Vagrant at [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html "Vagrant - Downloads") and install it.

From the project root, run:

    vagrant up

Edit the `hosts` file of your machine, add:

    192.168.1.10    aerial.local.html5up.net

Open your browser and visit http://aerial.local.html5up.net/
