#!/usr/bin/env fish

echo "Defining configuration sources..."
set WEZTERM_SOURCE "$HOME/.config/wezterm"
set NVIM_SOURCE "$HOME/.config/nvim"
set STARSHIP_SOURCE "$HOME/.config/starship"
set BAT_SOURCE "$HOME/.config/bat"
set GIT_CONFIG_SOURCE "$HOME/.config/git/config"
set FISH_CONFIG_SOURCE "$HOME/.config/fish/config.fish"
set TARGET_DIR (pwd)"/.config"

echo "Removing existing target directories..."
rm -rf $TARGET_DIR/git
rm -rf $TARGET_DIR/fish
rm -rf $TARGET_DIR/bat
rm -rf $TARGET_DIR/wezterm
rm -rf $TARGET_DIR/nvim
rm -rf $TARGET_DIR/starship

echo "Creating target directories..."
mkdir -p $TARGET_DIR/git
mkdir -p $TARGET_DIR/fish

echo "Copying configuration..."
cp -r $WEZTERM_SOURCE $TARGET_DIR
cp -r $NVIM_SOURCE $TARGET_DIR
cp -r $STARSHIP_SOURCE $TARGET_DIR
cp -r $BAT_SOURCE $TARGET_DIR
cp $GIT_CONFIG_SOURCE $TARGET_DIR/git
cp $FISH_CONFIG_SOURCE $TARGET_DIR/fish

echo "Dotfiles have been copied to $TARGET_DIR"
