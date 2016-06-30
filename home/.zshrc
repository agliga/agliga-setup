###########################################################        
# Options for Zsh

export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export TERM="xterm-256color"

autoload -U compinit
compinit
#setopt autopushd pushdminus pushdsilent pushdtohome
setopt autocd
setopt completealiases
#setopt cdablevars
#setopt ignoreeof
#setopt interactivecomments
#setopt nobanghist
#setopt noclobber
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt SH_WORD_SPLIT
#setopt nohup

export RPROMPT=$'%F{green}[%f%F{blue}%B%n%f%b%F{green}@%f%F{blue}%B%m%b%f %B%F{red}%?%f%b%F{green}]%f'
export PROMPT=$'%B%F{black}(%f%b%F{cyan}%~%f%B%F{black}) %F{green}%B%#%b%f %f%b'
#export PROMPT=$'%F{green}[ %{\e[1;34m%}%h%{\e[0m%} %{\e[1;31m%}%?%{\e[0m%}%F{green}]%B%#%b%f %B%E%b'
# PS1 and PS2
#export PS1="$(print '%{\e[1;34m%}%n%{\e[0m%}'):$(print '%{\e[0;34m%}%~%{\e[0m%}')$ "
#export PS2="$(print '%{\e[0;34m%}>%{\e[0m%}')"
#

# Vars used later on by Zsh
export EDITOR="vim"
export BROWSER=links

##################################################################
# Stuff to make my life easier

# allow approximate
zstyle ':completion:*' menu select
#zstyle ':completion:*:match:*' original only
#zstyle ':completion:*:approximate:*' max-errors 1 numeric

# tab completion for PID :D
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# cd not select parent dir
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# useful for path editing — backward-delete-word, but with / as additional delimiter
backward-delete-to-slash () {
  local WORDCHARS=${WORDCHARS//\//}
  zle .backward-delete-word
}
zle -N backward-delete-to-slash

##################################################################
# Key bindings
# http://mundy.yazzy.org/unix/zsh.php
# http://www.zsh.org/mla/home/2000/msg00727.html

typeset -g -A key
bindkey '^?' backward-delete-char
bindkey '^e[1~' beginning-of-line #Home
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char #Del
bindkey '^e[4~' end-of-line #End
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char 
bindkey '^[w' backward-delete-to-slash
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

export DEV=~/development
export DF=~/Patch
export CLICOLOR=1
export GREP_COLOR='1;37;41'
export LSCOLORS=ExFxCxDxBxegedabagacad

export LD_LIBRARY_PATH=/usr/local/lib
export IVY_CACHE=~/ivy_cache
export JAVA_HOME=$(/usr/libexec/java_home)
export PYTHONPATH="/Applications/eclipse/plugins/org.python.pydev_3.0.0.201311051910/pysrc"
export NPM_PACKAGES=/Users/agliga/.npm-packages
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"

#alias ls='ls --color'
alias gr='grep -rni --color=auto'
alias ll='ls -la'
alias gr='grep -rn'
alias ls='ls -G'
alias ll='ls -la'
alias ack='ack-5.12'
alias www='cd $DEV/default/trunk/src/www'
alias fs='cd $DEV/default/trunk/src/fs'
alias trunk='cd $DEV/default/trunk/'
alias mcs='cd $DEV/mcs/private-mcs/src/webui'
alias installer='cd $DEV/installer/private-installer/src/webui'

#if $STY is not set...
#if [ -z "$STY" ]; then
#    exec screen -ARR -d -m
#fi

bindkey '^R' history-incremental-search-backward

# This should always be run last either in .bashrc or as a script in .bashrc.d
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

