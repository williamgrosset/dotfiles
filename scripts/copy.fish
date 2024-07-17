#!/usr/bin/env fish

set WEZTERM_SOURCE "$HOME/.config/wezterm"
set NVIM_SOURCE "$HOME/.config/nvim"
set STARSHIP_SOURCE "$HOME/.config/starship"
set GIT_SOURCE "$HOME/.config/git"
set FISH_CONFIG_SOURCE "$HOME/.config/fish/config.fish"
set BAT_CONFIG_SOURCE "$HOME/.config/bat/config"

set TARGET_DIR (pwd)"/.config"

cp -r $WEZTERM_SOURCE $TARGET_DIR
cp -r $NVIM_SOURCE $TARGET_DIR
cp -r $STARSHIP_SOURCE $TARGET_DIR
cp -r $GIT_SOURCE $TARGET_DIR
cp $FISH_CONFIG_SOURCE $TARGET_DIR/fish
cp $BAT_CONFIG_SOURCE $TARGET_DIR/bat

echo "Dotfiles have been copied to $TARGET_DIR"
