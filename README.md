# .dotfiles

## Setup

```sh
git init --bare "$HOME/.dotfiles"

echo 'alias ds="/usr/bin/env git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"' >> "$HOME/.zshrc"
source "$HOME/.zshrc"

echo '.dotfiles' >> "$HOME/.gitignore"
dotfiles add "$HOME/.gitignore"
dotfiles commit -m 'git: add .gitignore'

dotfiles remote add origin git@github.com:jayanpraveen/.dotfiles.git
dotfiles push --set-upstream origin main
dotfiles config --local status.showUntrackedFiles no
```

