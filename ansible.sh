#!/bin/bash

if [[ -z $(ansible-galaxy role list | grep luizgavalda.aur) ]]; then
	ansible-galaxy install luizgavalda.aur
fi

ansible-playbook -i hosts main.yml -K


