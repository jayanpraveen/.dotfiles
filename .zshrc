export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT:$GOPATH:$GOBIN
export TERM=xterm-256color
export EDITOR="vim "
export ARCHFLAGS="-arch x86_64" # Compilation flags
export LANG=en_US.UTF-8 # You may need to manually set your language environment

# zsh syntax highlighting 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#15ff00,bold'
#ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#f5f535,bold'

# zsh autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=yellow,bg=black,bold,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
COMPLETION_WAITING_DOTS="true"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="example"
plugins=(git golang zsh-autosuggestions systemd)
source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles
for file in ~/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# autocomplete for doas
complete -cf doas

# export MANPATH="/usr/local/man:$MANPATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

