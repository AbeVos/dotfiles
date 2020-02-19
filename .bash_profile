source .bashrc

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

check_conda_env ()
{
	## Check if a environment is active.
    if [ ! -z ${CONDA_DEFAULT_ENV+x} ]; then
        printf "[`basename $CONDA_DEFAULT_ENV`] "
    fi
}

RESET="\[\033[00m\]"
BOLD="\[\033[01m\]"
BLACK="\[\033[30m\]"
GREEN="\[\033[32m\]"
YELLOW="\[\033[33m\]"
PURPLE="\[\033[0;35m\]"
DEFAULT="\[\033[39m\]"
LRED="\[\033[91m\]"
LGREEN="\[\033[92m\]"
LBLUE="\[\033[94m\]"

export PS1="$PURPLE\$(check_conda_env)$BOLD$LGREEN\u$LRED@$LBLUE\h:$GREEN\w$YELLOW\$(parse_git_branch)$RESET$LRED\$ $DEFAULT"
export PS2="$RED> $DEFAULT"

## Enable color support of ls and also add handy aliases.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

## Disable duplicate entries in .bash_history.
export HISTCONTROL=ignoreboth:erasedumps

export VISUAL=vim
export EDITOR="$VISUAL"
