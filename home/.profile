
# MacPorts Installer addition on 2012-10-05_at_07:47:19: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export WORK=/Users/agliga/development/mapr/trunk/src/www
export DEV=~/development

export DF=/Users/agliga/Patch

alias gr='grep -rn'
alias ls='ls -G'
alias ll='ls -la'
alias www='cd $DEV/default/trunk/src/www'
alias fs='cd $DEV/default/trunk/src/fs'
alias trunk='cd $DEV/default/trunk/'
alias mcs='cd $DEV/mcs/private-mcs/src/webui'
alias installer='cd $DEV/installer/private-installer/src/webui'
alias vim="nvim"

. ~/.zshrc
