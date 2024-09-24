#Create .env files

In your home directory, create a file called `.zshenv` which defines a variable pointing to your oh-my-zsh installation path:

`export ZSH='/your/path/.oh-my-zsh'`

#Create symlinks

Run the following commands:

```bash
ln -s ~/path/to/repo/dotfiles/nvim ~/.config/nvim
ln -s ~/path/to/repo/dotfiles/zshrc ~/.zshrc
ln -s ~/path/to/repo/dotfiles/tmux.conf ~/.tmux.conf
```
