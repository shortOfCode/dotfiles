
-- local wezterm = require 'wezterm'

local module = {}

function module.apply(config)
    config.color_scheme = 'Railscasts (dark) (terminal.sexy)'
    config.font_size = 9.0
    config.line_height = 1.1
    config.front_end = 'OpenGL'
    config.window_background_opacity = 0.8
end

return module
