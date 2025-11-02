# zsh(1)

path=(
    /opt/local/bin
    /opt/local/sbin
    $path
)

fpath=(
    /opt/local/share/zsh/site-functions
    $fpath
)

export EDITOR=$(whence vim)
PS1='%B%n@%m %3~ %# %b'

alias dot='git --git-dir=$HOME/.dot --work-tree=$HOME'
alias h='history 1'
alias ll='ls -al'
alias md=mkdir
alias rd=rmdir

bindkey -e
bindkey ' ' magic-space
bindkey '^I' complete-word

setopt AUTO_LIST
setopt HIST_IGNORE_DUPS
setopt INC_APPEND_HISTORY
setopt NO_BEEP
setopt PROMPT_SUBST

autoload -Uz compinit && compinit
for F in $ZDOTDIR/.zshrc.d/* ; do
    . $F
done
