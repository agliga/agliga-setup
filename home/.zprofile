
# MacPorts Installer addition on 2012-10-05_at_07:47:19: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$(du "$HOME/Scripts" | cut -f2 | paste -sd ':'):$HOME/.rvm/bin:$PATH"

# Finished adapting your PATH environment variable for use with MacPorts.

export DEV=~/development

export BROWSER="brave"
export EDITOR="nvim"
export TERMINAL="termite"

export PATH="$PATH:$M2_HOME/bin"
export PLASMA_USE_QT_SCALING=1

alias gr='grep -rn'
alias ls='ls -G'
alias ll='ls -la'
alias vim="nvim"

alias sip="cd /home/agliga/Development/sip"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/gems/ruby-2.4.6/bin:$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

alias ls='ls --color'
alias gr='grep -rni --color=auto'
alias ll='ls -la'
alias gr='grep -rn'
alias ack='ack-5.12'
alias ls='ls --color=auto'

export NVM_DIR="$HOME/.nvm"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export GPG_TTY=$(tty)

bindkey -v
bindkey '^R' history-incremental-search-backward


# This should always be run last either in .bashrc or as a script in .bashrc.d
#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh


