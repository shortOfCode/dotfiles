--local wezterm = require 'wezterm'
local fontsandcolors = require 'fontsandcolors'
local keyboard = require 'keyboard'

local config = {}
local handle = io.popen('uname')
if handle ~= nil then
    Uname = handle:read("*a")
    handle:close()
end

fontsandcolors.apply(config)
keyboard.apply(config)

config.enable_tab_bar = false
-- config.use_fancy_tab_bar = true


return config

