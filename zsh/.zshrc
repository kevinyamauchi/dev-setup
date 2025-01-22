eval "$(oh-my-posh init zsh --config /Users/kyamauch/config.omp.toml)"

# UV path
. "$HOME/.local/bin/env"

# initialize autocompletion
autoload -U compinit && compinit

# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# activate the venv in the current directory
alias penv="source .venv/bin/activate"
