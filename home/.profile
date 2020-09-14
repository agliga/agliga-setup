
# MacPorts Installer addition on 2012-10-05_at_07:47:19: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$(du "$HOME/Scripts" | cut -f2 | paste -sd ':'):$PATH"


# Finished adapting your PATH environment variable for use with MacPorts.

export DEV=~/development

export BROWSER="vivaldi-stable"
export TERMINAL="termite"

export PATH="$PATH:$M2_HOME/bin"
export PLASMA_USE_QT_SCALING=1

alias gr='grep -rn'
alias ls='ls -G'
alias ll='ls -la'
alias vim="nvim"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/gems/ruby-2.4.6/bin:$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
