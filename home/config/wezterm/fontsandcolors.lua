
-- local wezterm = require 'wezterm'

local module = {}

function module.apply(config)
    config.color_scheme = 'Railscasts (dark) (terminal.sexy)'
    config.font_size = 9.0
    config.line_height = 1.1
    config.window_background_opacity = 0.8
    if Uname == 'Darwin' then
        print('Using Darwin Graphics')
        config.webgpu_preferred_adapter = {
            backend = "Metal",
            device = 0,
            device_type = "IntegratedGpu",
            name = "Apple M1 Pro",
            vendor = 0
        }
        config.front_end = 'WebGpu'
    else
        config.front_end = 'OpenGL'
    end
end

return module
