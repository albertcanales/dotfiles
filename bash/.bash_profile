#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# startx if on tty2
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 2 ]; then
  exec startx
fi
