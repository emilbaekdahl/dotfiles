export ZSH="/Users/emilbaekdahl/.oh-my-zsh"
export EDITOR="nvim"
export LC_ALL=en_US.UTF-8

ZSH_THEME="spaceship"

plugins=(
  zsh-syntax-highlighting
  brew
  bundler
  gem
  git
  git-flow
  osx
  npm
  pip
  python
  rails
  ruby
  rbenv
  yarn
  git-open
  vi-mode
)

source $ZSH/oh-my-zsh.sh

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

alias vim="nvim"
alias v="nvim"
alias ctags="`brew --prefix`/bin/ctags"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export TERM="xterm-256color"
export KEYTIMEOUT=1
eval "$(rbenv init -)"

export PATH="/Users/emilbaekdahl/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

source /Users/emilbaekdahl/.ghcup/env

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GPG_TTY=$(tty)

