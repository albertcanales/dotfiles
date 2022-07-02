#!/bin/bash

# These dependencies will be later managed with Ansible itself
if ansible localhost -m yay | grep "This module yay was not found"; then
	wget -O ~/.ansible/plugins/modules/yay https://raw.githubusercontent.com/mnussbaum/ansible-yay/master/yay
fi
if ansible localhost -m stow | grep "This module stow was not found"; then
	wget -O ~/.ansible/plugins/modules/stow https://raw.githubusercontent.com/caian-org/ansible-stow/v0.1.4/stow
fi

# Running main playbook
ansible-playbook -i hosts main.yml -K


