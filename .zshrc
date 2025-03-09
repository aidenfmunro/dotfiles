# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"

export PATH=/usr/local/texlive/2024/bin/x86_64-linux/tlmgr:$PATH
export PATH=/usr/local/texlive/2024/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH

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
