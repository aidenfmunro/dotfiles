# Path to your Oh My Zsh installation.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"


source $ZSH/oh-my-zsh.sh

# zinit installation
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# zinit pluggins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit snippet OMZP::git

autoload -U compinit && compinit

# enable zoxide (install it first)!
eval "$(zoxide init zsh)"

# enable fzf (install it first!)
eval "$(fzf --zsh)"

# list of aliases
alias ls='ls --color'

alias r='ranger'

alias py='python3'

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

zstyle ':completions:*' matcher-list 'm:{a-z}={A-Za-z}'


alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate'
alias gco='git checkout'
alias gp='git push'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
