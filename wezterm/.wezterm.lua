local wezterm = require 'wezterm'

return {
  font = wezterm.font_with_fallback({
    "JetBrainsMono Nerd Font",
  }),
  font_size = 14,
  color_scheme = "Catppuccin Mocha",
  enable_tab_bar = true,
  use_fancy_tab_bar = true,
  window_decorations = "RESIZE",
  default_prog = { "wsl.exe" },
  initial_cols = 145,
  initial_rows = 33,

  colors = {
    background = "#151515",
  },

    keys = {
    { key = "C", mods = "CTRL|SHIFT", action = wezterm.action.CopyTo("Clipboard") },
    { key = "V", mods = "CTRL|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
    { key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
  },

  mouse_bindings = {
    {
      event = { Down = { streak = 1, button = "Right" } },
      mods = "NONE",
      action = wezterm.action.PasteFrom("Clipboard"),
    },
  },
}