# zsh(1)

PROMPT='%B%n@%m %3~ %# %b'

alias ll='ls -al'
alias md=mkdir
alias rd=rmdir

bindkey " " magic-space

autoload -Uz compinit && compinit
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws
