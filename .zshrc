# zsh(1)

export EDITOR=$(whence vim)

alias dot='git --git-dir=$HOME/.dot --work-tree=$HOME'
alias ll='ls -al'
alias md=mkdir
alias rd=rmdir

bindkey ' ' magic-space
bindkey '^I' complete-word

setopt AUTO_LIST
setopt HIST_IGNORE_DUPS
setopt NO_BEEP
setopt PROMPT_SUBST

autoload -Uz compinit && compinit
typeset -T PS ps=('%B%n@%m %3~ %# %b') ''

if [[ $commands[aws] ]] ; then
    autoload -Uz bashcompinit && bashcompinit
    complete -C aws_completer aws
fi

if [[ $commands[git] ]] ; then
    autoload -Uz vcs_info
    precmd_vcs_info() { vcs_info }
    precmd_functions+=( precmd_vcs_info )
    ps=('${vcs_info_msg_0_}' $ps)

    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:git:*' formats '(%b%u%c) '
    zstyle ':vcs_info:git:*' actionformats '%a> '
    zstyle ':vcs_info:git:*' check-for-changes true
    zstyle ':vcs_info:git:*' unstagedstr '*'
    zstyle ':vcs_info:git:*' stagedstr '+'
fi

ps=('%(0?,,%B%F{red}?%? %f%b)' $ps)
PS1=$PS
