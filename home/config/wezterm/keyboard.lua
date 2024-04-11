local wezterm = require 'wezterm'
local act = wezterm.action

local module = {}

function module.apply(config)
  config.disable_default_key_bindings = true

  config.keys = {
    { key = 'x', mods = 'ALT|CTRL', action = act.ActivateCopyMode },
    { key = 'Tab', mods = 'CTRL', action = act.ActivateTabRelative(1) },
    { key = 'Tab', mods = 'SHIFT|CTRL', action = act.ActivateTabRelative(-1) },
    { key = 'Enter', mods = 'ALT', action = act.ToggleFullScreen },
    { key = '\\', mods = 'ALT|CTRL', action = act.SplitHorizontal{ domain =  'CurrentPaneDomain' } },
    { key = '/', mods = 'ALT|CTRL', action = act.SplitVertical{ domain =  'CurrentPaneDomain' } },
    { key = '0', mods = 'SHIFT|ALT', action = act.ResetFontSize },
    { key = '-', mods = 'ALT', action = act.DecreaseFontSize },
    { key = '=', mods = 'ALT', action = act.IncreaseFontSize },
    { key = 'f', mods = 'ALT', action = act.Search 'CurrentSelectionOrEmptyString' },
    { key = 'k', mods = 'ALT', action = act.ClearScrollback 'ScrollbackOnly' },
    { key = 'l', mods = 'ALT', action = act.ShowDebugOverlay },
    { key = 'n', mods = 'ALT', action = act.SpawnWindow },
    { key = 'p', mods = 'ALT', action = act.ActivateCommandPalette },
    { key = 'r', mods = 'ALT', action = act.ReloadConfiguration },
    { key = 'u', mods = 'ALT', action = act.CharSelect{ copy_on_select = true, copy_to =  'ClipboardAndPrimarySelection' } },
    { key = 'z', mods = 'ALT', action = act.TogglePaneZoomState },
    { key = 'c', mods = 'ALT', action = act.CopyTo 'Clipboard' },
    { key = 'v', mods = 'ALT', action = act.PasteFrom 'Clipboard' },
    { key = 'phys:Space', mods = 'ALT|CTRL', action = act.QuickSelect },
    { key = 'LeftArrow', mods = 'ALT', action = act.ActivatePaneDirection 'Left' },
    { key = 'LeftArrow', mods = 'ALT|CTRL', action = act.AdjustPaneSize{ 'Left', 1 } },
    { key = 'RightArrow', mods = 'ALT', action = act.ActivatePaneDirection 'Right' },
    { key = 'RightArrow', mods = 'ALT|CTRL', action = act.AdjustPaneSize{ 'Right', 1 } },
    { key = 'UpArrow', mods = 'ALT', action = act.ActivatePaneDirection 'Up' },
    { key = 'UpArrow', mods = 'ALT|CTRL', action = act.AdjustPaneSize{ 'Up', 1 } },
    { key = 'DownArrow', mods = 'ALT', action = act.ActivatePaneDirection 'Down' },
    { key = 'DownArrow', mods = 'ALT|CTRL', action = act.AdjustPaneSize{ 'Down', 1 } },
    { key = 'Insert', mods = 'SHIFT', action = act.PasteFrom 'PrimarySelection' },
    { key = 'Insert', mods = 'CTRL', action = act.CopyTo 'PrimarySelection' },
    { key = 'Copy', mods = 'NONE', action = act.CopyTo 'Clipboard' },
    { key = 'Paste', mods = 'NONE', action = act.PasteFrom 'Clipboard' },
--    { key = 'PageUp', mods = 'SHIFT', action = act.ScrollByPage(-1) },
--    { key = 'PageUp', mods = 'SHIFT|CTRL', action = act.MoveTabRelative(-1) },
--    { key = 'PageDown', mods = 'SHIFT', action = act.ScrollByPage(1) },
--    { key = 'PageDown', mods = 'SHIFT|CTRL', action = act.MoveTabRelative(1) },
--    { key = 'M', mods = 'CTRL', action = act.Hide },
--    { key = 'M', mods = 'SHIFT|CTRL', action = act.Hide },
--    { key = 'X', mods = 'CTRL', action = act.ActivateCopyMode },
--    { key = 'X', mods = 'SHIFT|CTRL', action = act.ActivateCopyMode },
--    { key = '!', mods = 'CTRL', action = act.ActivateTab(0) },
--    { key = '!', mods = 'SHIFT|CTRL', action = act.ActivateTab(0) },
--    { key = '1', mods = 'SHIFT|CTRL', action = act.ActivateTab(0) },
--    { key = '1', mods = 'SUPER', action = act.ActivateTab(0) },
--    { key = '2', mods = 'SHIFT|CTRL', action = act.ActivateTab(1) },
--    { key = '2', mods = 'SUPER', action = act.ActivateTab(1) },
--    { key = '#', mods = 'CTRL', action = act.ActivateTab(2) },
--    { key = '#', mods = 'SHIFT|CTRL', action = act.ActivateTab(2) },
--    { key = '3', mods = 'SHIFT|CTRL', action = act.ActivateTab(2) },
--    { key = '3', mods = 'SUPER', action = act.ActivateTab(2) },
--    { key = '$', mods = 'CTRL', action = act.ActivateTab(3) },
--    { key = '$', mods = 'SHIFT|CTRL', action = act.ActivateTab(3) },
--    { key = '4', mods = 'SHIFT|CTRL', action = act.ActivateTab(3) },
--    { key = '4', mods = 'SUPER', action = act.ActivateTab(3) },
--    { key = '%', mods = 'CTRL', action = act.ActivateTab(4) },
--    { key = '%', mods = 'SHIFT|CTRL', action = act.ActivateTab(4) },
--    { key = '5', mods = 'SHIFT|CTRL', action = act.ActivateTab(4) },
--    { key = '5', mods = 'SUPER', action = act.ActivateTab(4) },
--    { key = '^', mods = 'CTRL', action = act.ActivateTab(5) },
--    { key = '^', mods = 'SHIFT|CTRL', action = act.ActivateTab(5) },
--    { key = '6', mods = 'SHIFT|CTRL', action = act.ActivateTab(5) },
--    { key = '6', mods = 'SUPER', action = act.ActivateTab(5) },
--    { key = '&', mods = 'CTRL', action = act.ActivateTab(6) },
--    { key = '&', mods = 'SHIFT|CTRL', action = act.ActivateTab(6) },
--    { key = '7', mods = 'SHIFT|CTRL', action = act.ActivateTab(6) },
--    { key = '7', mods = 'SUPER', action = act.ActivateTab(6) },
--    { key = '8', mods = 'SHIFT|CTRL', action = act.ActivateTab(7) },
--    { key = '8', mods = 'SUPER', action = act.ActivateTab(7) },
--    { key = '*', mods = 'CTRL', action = act.ActivateTab(7) },
--    { key = '*', mods = 'SHIFT|CTRL', action = act.ActivateTab(7) },
--    { key = 'PageDown', mods = 'CTRL', action = act.ActivateTabRelative(1) },
--    { key = 'PageUp', mods = 'CTRL', action = act.ActivateTabRelative(-1) },
--    { key = '[', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(-1) },
--    { key = '{', mods = 'SUPER', action = act.ActivateTabRelative(-1) },
--    { key = '{', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(-1) },
--    { key = ']', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(1) },
--    { key = '}', mods = 'SUPER', action = act.ActivateTabRelative(1) },
--    { key = '}', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(1) },
--    { key = '9', mods = 'SHIFT|CTRL', action = act.ActivateTab(-1) },
--    { key = '9', mods = 'SUPER', action = act.ActivateTab(-1) },
--    { key = '(', mods = 'CTRL', action = act.ActivateTab(-1) },
--    { key = '(', mods = 'SHIFT|CTRL', action = act.ActivateTab(-1) },
--    { key = 'T', mods = 'CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
--    { key = 'T', mods = 'SHIFT|CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
--    { key = 't', mods = 'SHIFT|CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
--    { key = 't', mods = 'SUPER', action = act.SpawnTab 'CurrentPaneDomain' },
--    { key = 'W', mods = 'CTRL', action = act.CloseCurrentTab{ confirm = true } },
--    { key = 'W', mods = 'SHIFT|CTRL', action = act.CloseCurrentTab{ confirm = true } },
--    { key = 'w', mods = 'SHIFT|CTRL', action = act.CloseCurrentTab{ confirm = true } },
--    { key = 'w', mods = 'SUPER', action = act.CloseCurrentTab{ confirm = true } },
  }

  config.key_tables = {
    copy_mode = {
      { key = 'Tab', mods = 'NONE', action = act.CopyMode 'MoveForwardWord' },
      { key = 'Tab', mods = 'SHIFT', action = act.CopyMode 'MoveBackwardWord' },
      { key = 'Enter', mods = 'NONE', action = act.CopyMode 'MoveToStartOfNextLine' },
      { key = 'Escape', mods = 'NONE', action = act.CopyMode 'Close' },
      { key = 'Space', mods = 'NONE', action = act.CopyMode{ SetSelectionMode =  'Cell' } },
      { key = '$', mods = 'NONE', action = act.CopyMode 'MoveToEndOfLineContent' },
      { key = '$', mods = 'SHIFT', action = act.CopyMode 'MoveToEndOfLineContent' },
      { key = ',', mods = 'NONE', action = act.CopyMode 'JumpReverse' },
      { key = '0', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLine' },
      { key = ';', mods = 'NONE', action = act.CopyMode 'JumpAgain' },
      { key = 'F', mods = 'NONE', action = act.CopyMode{ JumpBackward = { prev_char = false } } },
      { key = 'F', mods = 'SHIFT', action = act.CopyMode{ JumpBackward = { prev_char = false } } },
      { key = 'G', mods = 'NONE', action = act.CopyMode 'MoveToScrollbackBottom' },
      { key = 'G', mods = 'SHIFT', action = act.CopyMode 'MoveToScrollbackBottom' },
      { key = 'H', mods = 'NONE', action = act.CopyMode 'MoveToViewportTop' },
      { key = 'H', mods = 'SHIFT', action = act.CopyMode 'MoveToViewportTop' },
      { key = 'L', mods = 'NONE', action = act.CopyMode 'MoveToViewportBottom' },
      { key = 'L', mods = 'SHIFT', action = act.CopyMode 'MoveToViewportBottom' },
      { key = 'M', mods = 'NONE', action = act.CopyMode 'MoveToViewportMiddle' },
      { key = 'M', mods = 'SHIFT', action = act.CopyMode 'MoveToViewportMiddle' },
      { key = 'O', mods = 'NONE', action = act.CopyMode 'MoveToSelectionOtherEndHoriz' },
      { key = 'O', mods = 'SHIFT', action = act.CopyMode 'MoveToSelectionOtherEndHoriz' },
      { key = 'T', mods = 'NONE', action = act.CopyMode{ JumpBackward = { prev_char = true } } },
      { key = 'T', mods = 'SHIFT', action = act.CopyMode{ JumpBackward = { prev_char = true } } },
      { key = 'V', mods = 'NONE', action = act.CopyMode{ SetSelectionMode =  'Line' } },
      { key = 'V', mods = 'SHIFT', action = act.CopyMode{ SetSelectionMode =  'Line' } },
      { key = '^', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLineContent' },
      { key = '^', mods = 'SHIFT', action = act.CopyMode 'MoveToStartOfLineContent' },
      { key = 'b', mods = 'NONE', action = act.CopyMode 'MoveBackwardWord' },
      { key = 'b', mods = 'ALT', action = act.CopyMode 'MoveBackwardWord' },
      { key = 'b', mods = 'CTRL', action = act.CopyMode 'PageUp' },
      { key = 'c', mods = 'CTRL', action = act.CopyMode 'Close' },
      { key = 'd', mods = 'CTRL', action = act.CopyMode{ MoveByPage = (0.5) } },
      { key = 'e', mods = 'NONE', action = act.CopyMode 'MoveForwardWordEnd' },
      { key = 'f', mods = 'NONE', action = act.CopyMode{ JumpForward = { prev_char = false } } },
      { key = 'f', mods = 'ALT', action = act.CopyMode 'MoveForwardWord' },
      { key = 'f', mods = 'CTRL', action = act.CopyMode 'PageDown' },
      { key = 'g', mods = 'NONE', action = act.CopyMode 'MoveToScrollbackTop' },
      { key = 'g', mods = 'CTRL', action = act.CopyMode 'Close' },
      { key = 'h', mods = 'NONE', action = act.CopyMode 'MoveLeft' },
      { key = 'j', mods = 'NONE', action = act.CopyMode 'MoveDown' },
      { key = 'k', mods = 'NONE', action = act.CopyMode 'MoveUp' },
      { key = 'l', mods = 'NONE', action = act.CopyMode 'MoveRight' },
      { key = 'm', mods = 'ALT', action = act.CopyMode 'MoveToStartOfLineContent' },
      { key = 'o', mods = 'NONE', action = act.CopyMode 'MoveToSelectionOtherEnd' },
      { key = 'q', mods = 'NONE', action = act.CopyMode 'Close' },
      { key = 't', mods = 'NONE', action = act.CopyMode{ JumpForward = { prev_char = true } } },
      { key = 'u', mods = 'CTRL', action = act.CopyMode{ MoveByPage = (-0.5) } },
      { key = 'v', mods = 'NONE', action = act.CopyMode{ SetSelectionMode =  'Cell' } },
      { key = 'v', mods = 'CTRL', action = act.CopyMode{ SetSelectionMode =  'Block' } },
      { key = 'w', mods = 'NONE', action = act.CopyMode 'MoveForwardWord' },
      { key = 'y', mods = 'NONE', action = act.Multiple{ { CopyTo =  'ClipboardAndPrimarySelection' }, { CopyMode =  'Close' } } },
      { key = 'PageUp', mods = 'NONE', action = act.CopyMode 'PageUp' },
      { key = 'PageDown', mods = 'NONE', action = act.CopyMode 'PageDown' },
      { key = 'End', mods = 'NONE', action = act.CopyMode 'MoveToEndOfLineContent' },
      { key = 'Home', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLine' },
      { key = 'LeftArrow', mods = 'NONE', action = act.CopyMode 'MoveLeft' },
      { key = 'LeftArrow', mods = 'ALT', action = act.CopyMode 'MoveBackwardWord' },
      { key = 'RightArrow', mods = 'NONE', action = act.CopyMode 'MoveRight' },
      { key = 'RightArrow', mods = 'ALT', action = act.CopyMode 'MoveForwardWord' },
      { key = 'UpArrow', mods = 'NONE', action = act.CopyMode 'MoveUp' },
      { key = 'DownArrow', mods = 'NONE', action = act.CopyMode 'MoveDown' },
    },

    search_mode = {
      { key = 'Enter', mods = 'NONE', action = act.CopyMode 'PriorMatch' },
      { key = 'Escape', mods = 'NONE', action = act.CopyMode 'Close' },
      { key = 'n', mods = 'CTRL', action = act.CopyMode 'NextMatch' },
      { key = 'p', mods = 'CTRL', action = act.CopyMode 'PriorMatch' },
      { key = 'r', mods = 'CTRL', action = act.CopyMode 'CycleMatchType' },
      { key = 'u', mods = 'CTRL', action = act.CopyMode 'ClearPattern' },
      { key = 'y', mods = 'CTRL', action = act.Multiple{ { CopyTo = 'ClipboardAndPrimarySelection' }, { CopyMode = 'Close' } } },
      { key = 'PageUp', mods = 'NONE', action = act.CopyMode 'PriorMatchPage' },
      { key = 'PageDown', mods = 'NONE', action = act.CopyMode 'NextMatchPage' },
      { key = 'UpArrow', mods = 'NONE', action = act.CopyMode 'PriorMatch' },
      { key = 'DownArrow', mods = 'NONE', action = act.CopyMode 'NextMatch' },
    },

  }
end

return module
