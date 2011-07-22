source ~/.profile

autoload -Uz compinit
autoload colors ; colors
autoload zmv

compinit

HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=2000
setopt appendhistory nomatch
unsetopt autocd beep extendedglob notify

alias su='su -'
alias tmux='tmux -u2'
alias ls='ls -G'
alias nano='nano -w'
alias dir_to_lower="zmv -Qv '(**/)(*)(.D)' '$1${(L)2}'"
alias top='top -CaIiP'
# hg shortcuts
alias hc='hg commit'
alias hl='hg log -l 3'
alias hs='hg status'
#git shortcuts
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gl='git log -3'
alias gs='git status'
alias ga='git add'
alias git_strip='git reset --hard HEAD^'

PS1="$(print '%{\e[1;30m%}[%{\e[1;31m%}%n%{\e[1;30m%}-%{\e[1;31m%}%m%{\e[1;30m%}]%{\e[1;31m%} %~ %{\e[0m%}')"
RPS1="$(print '%{\e[1;30m%}[%{\e[1;31m%}%*%{\e[1;30m%}]%{\e[0m%}')"

bindkey -v '^[[3~' delete-char
bindkey -v '^[[4~' end-of-line
bindkey -v '^[OF' end-of-line
bindkey -v '^[[1~' beginning-of-line
bindkey -v '^[OH' beginning-of-line
bindkey -v '^[[5~' history-beginning-search-backward
bindkey -v '^[[6~' history-beginning-search-forward
