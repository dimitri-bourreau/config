# Aliases
alias cdco='cd ~/code'
alias ll='ls -lhAF'
alias v=vim

# Terminal
export PATH=$PATH:~/.npm-packages/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/.local/bin:$PATH"
. "/Users/uralrex/.deno/env"
if [[ ":$FPATH:" != *":/Users/uralrex/.zsh/completions:"* ]]; then export FPATH="/Users/uralrex/.zsh/completions:$FPATH"; fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="kphoen"
plugins=(git)
source $ZSH/oh-my-zsh.sh
