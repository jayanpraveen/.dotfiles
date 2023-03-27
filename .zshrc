export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT:$GOPATH:$GOBIN
export TERM=xterm-256color
export EDITOR="vim "
export ARCHFLAGS="-arch x86_64" # Compilation flags
export LANG=en_US.UTF-8 # You may need to manually set your language environment

export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="example"
plugins=(git fast-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles
for file in $HOME/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

