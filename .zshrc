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
export PYTHONSTARTUP="/home/marc/.pyrc"
#export PYTHONPATH=/usr/bin:/usr/lib/python32.zip:/usr/lib/python3.2:/usr/lib/python3.2/plat-linux2:/usr/lib/pyton3.2/lib-dynload:/usr/lib/python3.2/site-packages:/usr/lib/python3.2/site-packages/setuptools-0.6c11.egg-info:/usr/lib/python3.2/site-packages/IPython/extensions


#hopefully this will fix zshell pos1, ende problem
bindkey "^[[2~" yank                    # Insert
bindkey "^[[3~" delete-char             # Del
bindkey "^[[5~" up-line-or-history      # PageUp
bindkey "^[[6~" down-line-or-history    # PageDown
bindkey "^[e"   expand-cmd-path         # C-e for expanding path of typed command.
bindkey "^[[A"  up-line-or-search       # Up arrow for back-history-search.
bindkey "^[[B"  down-line-or-search     # Down arrow for fwd-history-search.
bindkey " "     magic-space             # Do history expansion on space.
case "$TERM" in
linux|screen)
bindkey "^[[1~" beginning-of-line       # Pos1
bindkey "^[[4~" end-of-line             # End
;;
*xterm*|(dt|k)term)
	bindkey "^[[H"  beginning-of-line       # Pos1
	bindkey "^[[F"  end-of-line             # End
	bindkey "^[[7~" beginning-of-line       # Pos1
	bindkey "^[[8~" end-of-line             # End
	;;
	rxvt|Eterm)
	bindkey "^[[7~" beginning-of-line       # Pos1
	bindkey "^[[8~" end-of-line             # End
	;;
	esac
