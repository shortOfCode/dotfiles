--local wezterm = require 'wezterm'
local fontsandcolors = require 'fontsandcolors'
local keyboard = require 'keyboard' 

local config = {}

fontsandcolors.apply(config)
keyboard.apply(config)

config.enable_tab_bar = false
-- config.use_fancy_tab_bar = true


return config

