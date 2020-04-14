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

setopt nonomatch
setopt clobber

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
eval "$(pyenv init -)"

# anyenv - python
export PATH="$HOME/.anyenv/envs/pyenv/shims/python:$PATH"

setopt nonomatch
setopt clobber
unsetopt correct_all
