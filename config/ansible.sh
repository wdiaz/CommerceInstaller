#!/bin/bash
echo "Executing Ansible Playbook"
chmod +x ./ansible.sh
ansible-playbook -i ansible/hosts.ini ansible/playbook.yml
