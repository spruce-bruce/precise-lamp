# Starter Vagrant Config

## Instructions
Make sure [vagrant](http://www.vagrantup.com/) and some sort of virtual machine software is installed. I use [VirtualBox](https://www.virtualbox.org/).

Clone this repo and cd into the repository root and run `vagrant up`. Vagrant should download the box and then run the provisioning bash script which will install your LAMP stack. There are probably some missing php/apache modules which will get added as I notice they're missing.

The box is set up to listen on ip 33.33.33.33 SO either toss that ip in your browser's explorer bar or add a host entry and pull it up. You should see some phpinfo() output.
 
## Software Versions
* Ubuntu 12.04
* PHP 5.3.10
* MySQL 5.5.37
