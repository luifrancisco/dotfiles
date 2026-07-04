local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- 1. Appearance & Font
-- (Make sure to install a Nerd Font like JetBrainsMono Nerd Font)
-- config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 14
config.color_scheme = 'Dracula'

config.colors = {
  -- Changes the color of selected text background
  selection_bg = '#b5d5ff',

  -- Changes the color of the text itself when selected
  selection_fg = '#000000',
}

-- 2. Window & Tab Bar
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.90
config.macos_window_background_blur = 20

-- 3. Performance & Smoothness
config.animation_fps = 120
-- config.render_metrics_text_override = 'DWrite' -- Windows only, helps with glyph rendering

-- 4. Keybindings
config.keys = {
  -- Split pane: Vertical
  {
    key = '|',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Split pane: Horizontal
  {
    key = '_',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- Fast reload
  {
    key = 'R',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ReloadConfiguration,
  },
  -- Go to next word
  {
    key = 'e',
    mods = 'CTRL',
    action = wezterm.action.SendString '\x1bf',
  },
    -- Go to previous word
  {
    key = 'q',
    mods = 'CTRL',
    action = wezterm.action.SendString '\x1bb',
  },

}

return config
