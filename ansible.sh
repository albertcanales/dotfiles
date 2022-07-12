#!/bin/bash


mkdir -p ~/.ansible/plugins/modules

# These dependencies will be later managed with Ansible requirements
if [[ $(ansible localhost -m yay | grep "The module yay was not found") ]]; then
	wget -O ~/.ansible/plugins/modules/yay https://raw.githubusercontent.com/mnussbaum/ansible-yay/master/yay &&
            echo "Installed yay module" || echo "Error when installing yay module"
else
	echo "yay module is already installed"
fi
if [[ $(ansible localhost -m stow | grep "The module stow was not found") ]]; then
	wget -O ~/.ansible/plugins/modules/stow https://raw.githubusercontent.com/caian-org/ansible-stow/v0.1.4/stow && 
            echo "Installed stow module" || echo "Error when installing stow module"
fi

# Running main playbook
ansible-playbook -i hosts main.yml -K


