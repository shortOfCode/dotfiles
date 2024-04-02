
local wezterm = require 'wezterm'

local module = {}

function module.apply(config)
    config.color_scheme = 'Railscasts (dark) (terminal.sexy)'
    config.window_frame = {
       font_size = 8.0,
       font = wezterm.font { family = 'Fira Code', weight = 'Light' }
    }

    config.font = wezterm.font {
        family = 'Noto Sans Mono',
        weight = 'Regular'
    }

    config.font_size = 9.0
    config.line_height = 1.1
end

return module
