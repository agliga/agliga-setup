
# MacPorts Installer addition on 2012-10-05_at_07:47:19: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export WORK=/Users/agliga/development/mapr/trunk/src/www
export DEV=~/development

export DF=/Users/agliga/Patch

export SPRINT_BRANCH=Y17_Sprint11
export M2_HOME=/Applications/ride-5.2.1-mac64/apache-maven-3.1.1

export PATH=$PATH:$M2_HOME/bin

export JAVA_HOME=/Applications/ride-5.2.1-mac64/OracleJDK-1.7.0_79 

alias gr='grep -rn'
alias ls='ls -G'
alias ll='ls -la'
alias www='cd $DEV/default/trunk/src/www'
alias fs='cd $DEV/default/trunk/src/fs'
alias trunk='cd $DEV/default/trunk/'
alias mcs='cd $DEV/mcs/private-mcs/src/webui'
alias installer='cd $DEV/installer/private-installer/src/webui'
alias vim="nvim"

alias rpp='cd ~/development/rpp/rpp-dne'
alias clt='cd ~/development/rpp/webapp'
alias dne='cd ~/development/rpp'
alias lnp='cd ~/development/lnp'
alias dev='cd ~/development/'


. ~/.zshrc
