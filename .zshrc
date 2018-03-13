autoload -U compinit
compinit

setopt correct
setopt nobeep
setopt no_tify

# history settings
HISTSIZE=1000
HISTFILESIZE=2000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_no_store
setopt share_history

# aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
