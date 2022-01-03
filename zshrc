export CLICLOR=1
NODE_PENDING_DEPRECATION=1
NODE_OPTIONS=--trace-warnings

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="af-magic"
export ZSH="/Users/dimitri/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f "/Users/dimitri/.ghcup/env" ] && source "/Users/dimitri/.ghcup/env" # ghcup-env
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias cdco='cd /Volumes/Dimitri\ Bourreau/code'
alias ll='ls -lhAF'
alias v=vim

bindkey "©" fzf-cd-widget

export PATH="$PATH:~/.npm-packages/bin"
