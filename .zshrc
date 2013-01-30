#
# ~/.zshrc
#

ZSH=/usr/share/oh-my-zsh
ZSH_THEME="candy"

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
export PYTHONSTARTUP="/home/marc/.pyrc"


#hopefully this will fix zshell pos1, ende problem
bindkey "^[[2~" yank                    # Insert
bindkey "^[[3~" delete-char             # Del
bindkey "^[[5~" up-line-or-history      # PageUp
bindkey "^[[6~" down-line-or-history    # PageDown
bindkey "^[e"   expand-cmd-path         # C-e for expanding path of typed command.
bindkey "^[[A"  up-line-or-search       # Up arrow for back-history-search.
bindkey "^[[B"  down-line-or-search     # Down arrow for fwd-history-search.
bindkey " "     magic-space             # Do history expansion on space.
bindkey "^[[7~" beginning-of-line       # Pos1
bindkey "^[[8~" end-of-line             # End

plugins=(archlinux git github zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
