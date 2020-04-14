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
export TERM="xterm-256color"

# Alias
alias vim="nvim"
alias v="nvim"
alias ctags="`brew --prefix`/bin/ctags"

# fzf
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# rbenv (Ruby version management)
eval "$(rbenv init -)"

# n (Node version management)
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# pyenv (Python version management)
eval "$(pyenv init -)"

export GPG_TTY=$(tty)

export BAT_THEME="OneHalfDark"
