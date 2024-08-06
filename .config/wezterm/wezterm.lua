local wezterm = require 'wezterm'
local config = wezterm.config_builder()

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

return config
