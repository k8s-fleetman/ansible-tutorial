#!/bin/sh

ansible -u vagrant -m ping web1
ansible -u vagrant -m ping app
ansible -u vagrant -m ping webservers
ansible -u vagrant -m ping dc
ansible -u vagrant -m shell -a 'ls -al' web1
ansible -u vagrant -m shell -a 'whoami' app
ansible -u vagrant -m shell -a 'ifconfig' webservers
ansible -u vagrant -m shell -a 'hostname' dc
ansible -u vagrant -m ping all
ansible -u vagrant -m ping web*
ansible -u vagrant -m ping 'appservers:dbservers'
ansible -u vagrant -m ping 'dc:!webservers'
ansible -u vagrant -m ping 'dc:&webservers'
