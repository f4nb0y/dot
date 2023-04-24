# zsh(1)

export EDITOR=$(whence vim)
PS1='%(2L,(%L) ,)%B%n@%m %3~ %# %b'

alias ll='ls -al'
alias md=mkdir
alias rd=rmdir
alias vi=$EDITOR

bindkey " " magic-space

autoload -Uz compinit && compinit
autoload bashcompinit && bashcompinit
[[ -x /usr/local/bin/aws_completer ]] && complete -C /usr/local/bin/aws_completer aws

# Activate virtual environment in a subshell
function activate-venv() {
    if [[ ! -f $1/pyvenv.cfg ]] ; then
        print "Cannot find $1/pyvenv.cfg" >&2
        return 1
    fi

    VENV=$( cd $1 && pwd )
    VIRTUAL_ENV=$VENV PATH=$VENV/bin:$PATH $SHELL
}
