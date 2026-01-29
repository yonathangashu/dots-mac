#!/bin/bash
set -e

echo "Installing Homebrew..."
if ! command -v brew &>/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing packages from Brewfile..."
brew bundle install

echo "Symlinking dotfiles..."
ln -sf "$(pwd)/.zshrc" ~/.zshrc
ln -sf "$(pwd)/.tmux.conf" ~/.tmux.conf
ln -sf "$(pwd)/.p10k.zsh" ~/.p10k.zsh

mkdir -p ~/.config
ln -sf "$(pwd)/.config/nvim" ~/.config/nvim
ln -sf "$(pwd)/.config/kitty" ~/.config/kitty
ln -sf "$(pwd)/.config/raycast" ~/.config/raycast
ln -sf "$(pwd)/.config/skhd" ~/.config/skhd
ln -sf "$(pwd)/.config/yabai" ~/.config/yabai
ln -sf "$(pwd)/.config/sketchybar" ~/.config/sketchybar

echo "Setup complete! Restart your shell."
