source ~/.profile

autoload -Uz compinit
autoload colors ; colors
autoload -U edit-command-line

compinit

HISTFILE=~/.histfile
HISTSIZE=900000
SAVEHIST=200000
setopt appendhistory nomatch
unsetopt autocd beep extendedglob notify

# set line editing to vim
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

alias su='su -'
alias ls='ls -G'
alias nano='nano -w'
alias ls='ls --color'

PS1="$(print '%{\e[1;30m%}[%{\e[1;31m%}%n%{\e[1;30m%}-%{\e[1;31m%}%m%{\e[1;30m%}]%{\e[1;31m%} %~ %{\e[0m%}')"
RPS1="$(print '%{\e[1;30m%}[%{\e[1;31m%}%*%{\e[1;30m%}]%{\e[0m%}')"

bindkey -v '^[[3~' delete-char
bindkey -v '^[[4~' end-of-line
bindkey -v '^[OF' end-of-line
bindkey -v '^[[1~' beginning-of-line
bindkey -v '^[OH' beginning-of-line
bindkey -v '^[[5~' history-beginning-search-backward
bindkey -v '^[[6~' history-beginning-search-forward
bindkey -v '^R' history-incremental-search-backward
bindkey -v '^T' history-incremental-search-forward
bindkey -v '^[^?' backward-delete-word

if [ "$TERM" = "xterm" ]; then
  export TERM="xterm-256color"
fi
