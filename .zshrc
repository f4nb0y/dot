# zsh(1)

export EDITOR=$(whence vim)
PS1='%(2L,(%L) ,)%B%n@%m %3~ %# %b'

alias dot='git --git-dir=$HOME/.dot --work-tree=$HOME'
alias ll='ls -al'
alias md=mkdir
alias rd=rmdir
alias vi=$EDITOR

bindkey " " magic-space

autoload -Uz compinit && compinit
autoload bashcompinit && bashcompinit
if [[ $commands[aws_completer] ]] ; then
    complete -C aws_completer aws
fi
if [[ $commands[kubectl] ]] ; then
    # https://notes.eliasnorrby.com/zsh/lazy-load-completion
    kubectl() {
        unfunction $0
        source <(kubectl completion zsh)
        $0 "$@"
    }
fi

# Activate virtual environment in a subshell
function activate-venv() {
    if [[ ! -f $1/pyvenv.cfg ]] ; then
        print "Cannot find $1/pyvenv.cfg" >&2
        return 1
    fi

    VENV=$( cd $1 && pwd )
    VIRTUAL_ENV=$VENV PATH=$VENV/bin:$PATH $SHELL
}
