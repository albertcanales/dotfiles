# System alias
alias sudo="sudo "
alias ..="cd .."
alias ...="cd ../.."
alias mkdir="mkdir -p"
alias rm="rm -r"
alias ls="ls --human-readable --color=auto"
alias la="ls -la"
alias l="ls"    # too many typos :P
alias untar="tar -zxvf"
alias sdn="sudo shutdown -h now"
alias cl="clear"
alias ccat="/usr/bin/cat"
alias cat="bat"
alias icat="kitty +kitten icat"
alias lls="/usr/bin/ls"
alias ls="lsd -hA"
alias tree="lsd --tree"
alias cleanup-packages='(set -x; sudo pacman -R $(pacman -Qdtq))'

# Programs
alias gs="git status"
alias gd="git diff"
alias gl="git log"
alias gaa="git add --all"
alias vim="nvim"
alias g++c="g++ --std=c++17 -Wall -O2 -fsanitize=address"
alias scp="scp -F $HOME/.ssh/config "
alias f5upc="f5fpc -s -x -t https://upclink.upc.edu"
alias sshconf="kitty +kitten ssh "
alias sshset="exec ssh-agent bash -c 'ssh-add && bash'"
alias dwmmake="rm -f ~/.dwm/config.h && sudo make -C ~/.dwm install"

# SSH
#alias ssh="BINARY_SSH=ssh /usr/bin/ssh-ident"
#alias scp="BINARY_SSH=scp /usr/bin/ssh-ident"
#alias rsync="BINARY_SSH=rsync /usr/bin/ssh-ident"

# Folders
next="$HOME/Nextcloud"
uni="$HOME/Nextcloud/Acadèmic/Universitat/Q5/"

# Files
alias uni="cd $uni"
alias next="cd $next"
alias dot="cd ~/dotfiles"
alias aliasedit="vim ~/.bash_aliases; source ~/.bashrc"
alias varsedit="vim ~/dotfiles/group_vars/local"


function mmkdir() {
    mkdir $1 && cd $1
}
