#!/bin/bash

# Removing leftover leases and persistent rules
echo "cleaning up dhcp leases"
rm -rf /var/lib/dhclient/dhclient-eth0.leases

# Make sure Udev doesn't block our network
echo "cleaning up udev rules"
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules
