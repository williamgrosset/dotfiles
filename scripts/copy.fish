#!/usr/bin/env fish

set WEZTERM_SOURCE "$HOME/.config/wezterm"
set FISH_CONFIG_SOURCE "$HOME/.config/fish/config.fish"
set NVIM_SOURCE "$HOME/.config/nvim"
set STARSHIP_SOURCE "$HOME/.config/starship"
set GIT_SOURCE "$HOME/.config/git"

set TARGET_DIR (pwd)"/.config"

cp -r $WEZTERM_SOURCE $TARGET_DIR
cp $FISH_CONFIG_SOURCE $TARGET_DIR/fish
cp -r $NVIM_SOURCE $TARGET_DIR
cp -r $STARSHIP_SOURCE $TARGET_DIR
cp -r $GIT_SOURCE $TARGET_DIR

echo "Dotfiles have been copied to $TARGET_DIR"
