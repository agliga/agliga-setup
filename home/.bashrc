export LD_LIBRARY_PATH=/usr/local/lib
export IVY_CACHE=~/ivy_cache
export JAVA_HOME=$(/usr/libexec/java_home)
export PS1="\n\[\e[32;1m\](\[\e[37;1m\]\u\[\e[32;1m\])-(\[\e[37;1m\]jobs:\j\[\e[32;1m\])-(\[\e[37;1m\]\w\[\e[32;1m\])\n(\[\[\e[37;1m\]\! \$\[\e[32;1m\])-> \[\e[0m\]"

# This should always be run last either in .bashrc or as a script in .bashrc.d   return
if [[ -z "$TMUX" ]]; then
    tmux has-session &> /dev/null
    if [ $? -eq 1 ]; then
        exec tmux new
        exit
    else
        exec tmux attach
        exit
    fi
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
