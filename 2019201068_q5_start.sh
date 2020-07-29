#!/bin/bash
sudo apt install openvpn
wget http://vpn.iiit.ac.in/secure/linux.ovpn --user=deeksha.sahu@students.iiit.ac.in --ask-password
sudo sed -i '1inameserver 10.4.20.204' /etc/resolv.conf
pn=$( find *.ovpn )
sudo openvpn --config $pn



