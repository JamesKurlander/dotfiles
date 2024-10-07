#!/bin/bash
DOTFILES_DIR="$HOME/Repos/dotfiles"

echo "Setting MacOS defaults..."
sh $DOTFILES_DIR/osx/set-defaults.sh

# Install Homebrew
if ! command -v brew &>/dev/null; then
  echo "Homebrew is not installed. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Homebrew packages
brew tap homebrew/bundle

if [[ -f "$DOTFILES_DIR/homebrew/Brewfile" ]]; then
  echo "Installing from Brewfile..."
  brew bundle --file="$DOTFILES_DIR/homebrew/Brewfile"
else
  echo "Brewfile not found in dotfiles directory."
fi

# Install problematic packages manually
#echo "Installing tpm"
#rm -rf ~/.tmux/plugins/tpm && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#mkdir -p ~/.tmux/plugins/catppuccin
#git clone https://github.com/catppuccin/tmux.git ~/.tmux/plugins/catppuccin/tmux

# Symlink for .zshrc
if [[ -f "$HOME/.zshrc" || -L "$HOME/.zshrc" ]]; then
  echo "Backing up existing .zshrc to .zshrc.bak"
  mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi
ln -sf "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
echo "Symlinked .zshrc"

# Symlink for Neovim
if [[ -d "$HOME/.config/nvim" || -L "$HOME/.config/nvim" ]]; then
  echo "Backing up existing nvim config to nvim_backup"
  mv "$HOME/.config/nvim" "$HOME/.config/nvim_backup"
fi
ln -sf "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
echo "Symlinked Neovim config"

# Symlink for tmux.conf
if [[ -f "$HOME/.tmux.conf" || -L "$HOME/.tmux.conf" ]]; then
    echo "Backing up existing .tmux.conf to .tmux.conf.bak"
    mv "$HOME/.tmux.conf" "$HOME/.tmux.conf.bak"
fi
ln -sf "$DOTFILES_DIR/tmux/tmux.conf" "$HOME/.tmux.conf"
echo "Symlinked .tmux.conf"

# Refresh the terminal
#reset
