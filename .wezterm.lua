-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- fonts
config.font_size = 10
config.font = wezterm.font("JetBrains Mono", {})
config.color_scheme = "Everblush"

-- Finally, return the configuration to wezterm:
return config
