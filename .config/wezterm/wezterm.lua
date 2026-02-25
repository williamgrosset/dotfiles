local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

-- FPS
config.max_fps = 240
config.animation_fps = 240

-- Color scheme
config.color_scheme = 'Dracula (Official)'

-- Font
config.font = wezterm.font({
  family = 'FiraCode Nerd Font',
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
})
config.font_size = 14.0

-- Cursor
config.default_cursor_style = "BlinkingUnderline"
config.cursor_thickness = 2

-- Audio
config.audible_bell = 'Disabled'

-- Padding
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 0
}

-- Tabs
config.keys = {
  -- Reorder
  { key = "LeftArrow",  mods = "CTRL|SHIFT", action = act.MoveTabRelative(-1) },
  { key = "RightArrow", mods = "CTRL|SHIFT", action = act.MoveTabRelative(1) },
}

return config
