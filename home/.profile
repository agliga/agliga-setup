
# MacPorts Installer addition on 2012-10-05_at_07:47:19: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$(du "$HOME/Scripts" | cut -f2 | paste -sd ':'):$HOME/.rvm/bin:$PATH"

# Finished adapting your PATH environment variable for use with MacPorts.

export DEV=~/development

export BROWSER="brave"
export EDITOR="nvim"
export TERMINAL="alacritty"

export PLASMA_USE_QT_SCALING=1

alias gr='grep -rn'
alias ls='ls -G'
alias ll='ls -la'
alias vim="nvim"

alias ls='ls --color'
alias gr='grep -rni --color=auto'
alias ll='ls -la'
alias gr='grep -rn'
alias ack='ack-5.12'
alias ls='ls --color=auto'

export GPG_TTY=$(tty)

