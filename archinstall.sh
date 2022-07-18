#!/bin/bash

# Script that runs archinstall with the preconfiguration files

REPO_URL="https://raw.githubusercontent.com/albertcanales/dotfiles/arch"

archinstall \
    --config "${REPO_URL}/archinstall/user_configuration.json" \
    --disk-layout "${REPO_URL}/archinstall/user_disk_layout.json" \
    --creds "${REPO_URL}/archinstall/user_credentials.json"

