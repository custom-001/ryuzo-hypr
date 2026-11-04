-- VARIABLES --
-- Applications
local terminal  = 'kitty'                -- terminal       --
local browser   = 'firefox'              -- browser        --
local filemgr   = 'nautilus'             -- file manager   --
local editor    = 'gnome-text-editor'    -- text editor    --
local systemmon = 'gnome-system-monitor' -- system monitor --
local gamelib   = 'lutris'               -- game library   --

-- BINDS --
-- Session --
hl.bind('SUPER + SHIFT + Q',         hl.dsp.exit())          -- Exits the session   --
hl.bind('SUPER + SHIFT + R',         hl.dsp.reload_config()) -- Reloads the session --

-- Window Management --
hl.bind('SUPER         + Q',         hl.dsp.window.close()) -- Closes the window         --
hl.bind('SUPER         + Semicolon', hl.dsp.window.float()) -- Makes the window floating --

-- Application Launching --
hl.bind('SUPER         + Return',    hl.dsp.exec_cmd(terminal))  -- Terminal       --
hl.bind('SUPER         + E',         hl.dsp.exec_cmd(browser))   -- Browser        --
hl.bind('SUPER         + F',         hl.dsp.exec_cmd(filemgr))   -- File manager   --
hl.bind('SUPER         + T',         hl.dsp.exec_cmd(editor))    -- Text editor    --
hl.bind('SUPER         + M',         hl.dsp.exec_cmd(systemmon)) -- System monitor --
hl.bind('SUPER         + G',         hl.dsp.exec_cmd(gamelib))   -- Game library   --

-- Volume and brightness --
hl.bind('XF86AudioRaiseVolume',  hl.dsp.exec_cmd('wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+')) -- Raise volume --
hl.bind('XF86AudioLowerVolume',  hl.dsp.exec_cmd('wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-')) -- Lower volume --
hl.bind('XF86MonBrightnessUp',   hl.dsp.exec_cmd('brightnessctl set 5%+')) -- Raise brightness --
hl.bind('XF86MonBrightnessDown', hl.dsp.exec_cmd('brightnessctl set 5%-')) -- Lower brightness --

-- Workspaces
for w = 1, 9 do
  hl.bind('ALT         + ' .. w, hl.dsp.focus({       workspace = w })) -- Focuses on a different workspace                  --
  hl.bind('ALT + SHIFT + ' .. w, hl.dsp.window.move({ workspace = w })) -- Moves the current window to a different workspace --
end
