#!/bin/bash

# These dependencies will be later managed with Ansible itself
if [[ -z $(ansible-galaxy role list | grep luizgavalda.aur) ]]; then
	ansible-galaxy install luizgavalda.aur
fi
if ansible localhost -m stow | grep "This module stow was not found"; then
	wget -O ~/.ansible/plugins/modules/stow https://raw.githubusercontent.com/caian-org/ansible-stow/v0.1.4/stow
fi

# Running main playbook
ansible-playbook -i hosts main.yml -K


