# zsh(1)

export EDITOR=$(whence vim)
PROMPT='%B%n@%m %3~ %# %b'

alias ll='ls -al'
alias md=mkdir
alias rd=rmdir
alias vi=$EDITOR

bindkey " " magic-space

autoload -Uz compinit && compinit
autoload bashcompinit && bashcompinit
[[ -x /usr/local/bin/aws_completer ]] && complete -C /usr/local/bin/aws_completer aws
