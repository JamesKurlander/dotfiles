#!/bin/bash
DOTFILES_DIR="$HOME/Repos/dotfiles"

personal_flag=false

while getopts "p" flag; do
  case "${flag}" in
    p) personal_flag=true ;;
    *) 
       echo "Invalid option: -$OPTARG" 
       exit 1 ;;
  esac
done

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
brew bundle --file="$DOTFILES_DIR/homebrew/Brewfile.work"

if [[ "$personal_flag" == true && -f "$DOTFILES_DIR/homebrew/Brewfile.personal" ]]; then
  echo "Installing from Brewfile.personal..."
  brew bundle --file="$DOTFILES_DIR/homebrew/Brewfile.personal"
else
  echo "Brewfile.personal not found in dotfiles directory."
fi

# Symlink for .zshrc
ln -sf "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
echo "Symlinked .zshrc"

# Symlink for Neovim
ln -sf "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
echo "Symlinked Neovim config"

# Symlink for tmux.conf
ln -sf "$DOTFILES_DIR/tmux/tmux.conf" "$HOME/.tmux.conf"
echo "Symlinked .tmux.conf"

# Symlink for spotify-player
ln -sf "$DOTFILES_DIR/spotify-player/app.toml" "$HOME/.config/spotify-player/app.toml"
echo "Symlinked spotify-player/app.toml"

# Symlink for yazi
ln -sf "$DOTFILES_DIR/yazi" "$HOME/.config/yazi"
echo "Symlinked yazi"

# Symlink for newsboat
ln -sf "$DOTFILES_DIR/newsboat/urls" "$HOME/.newsboat/urls"
ln -sf "$DOTFILES_DIR/newsboat/config" "$HOME/.newsboat/config"
echo "Symlinked newsboat"

# Refresh the terminal
#reset
