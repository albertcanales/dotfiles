#!/bin/bash

if [[ $(nvim +PlugStatus +qa | cat | grep "PlugInstall") ]]; then
    nvim +PlugInstall +qa
    exit 1
fi
exit 0

