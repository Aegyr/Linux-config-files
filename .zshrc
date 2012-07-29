#
# ~/.zshrc
#

autoload -U compinit promptinit
compinit
promptinit
 
# This will set the default prompt to the walters theme
prompt walters

alias ls='ls --color=auto'

export EDITOR="vim"
alias y="yaourt --noconfirm"

alias x="startx"
alias die="sudo shutdown -h now"
alias reboot="sudo reboot"

export GIT_AUTHOR_NAME="Marc Kassubeck"
export GIT_AUTHOR_EMAIL="marc.kassubeck@goolemail.com"
export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
