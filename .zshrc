# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT:$GOPATH:$GOBIN

# zsh syntax highlighting 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#15ff00,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#f5f535,bold'

# zsh autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=yellow,bg=black,bold,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
COMPLETION_WAITING_DOTS="true"

# -----< alias >-----

function port () { lsof -i :"$*" }

function ipa () { ip addr | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' }

alias c="codium ."

# python
alias py="python3"

# mkdir + cd = 'take'
# function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# opens this file 
alias zrc="vim $HOME/.zshrc"

#alias rm="trash-put --force "

alias open='xdg-open '

# -----< oh-my-zsh >-----

export CLICOLOR=1
export TERM=xterm-256color

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git golang zsh-autosuggestions systemd)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

export EDITOR="vim"


alias cdd="cd $HOME/Desktop"
alias tsh="trash-put --force"
alias ds='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias _="doas "
complete -cf doas

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

source /usr/share/nvm/init-nvm.sh
