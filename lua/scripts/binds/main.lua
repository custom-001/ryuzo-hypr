-- VARIABLES --
-- Applications
local terminal  = 'kitty'                -- terminal       --
local browser   = 'firefox'              -- browser        --
local filemgr   = 'dolphin'              -- file manager   --
local editor    = 'kate'                 -- text editor    --
local systemmon = 'plasma-systemmonitor' -- system monitor --

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

-- Workspaces
for w = 1, 4 do
  hl.bind('ALT         + ' .. w, hl.dsp.focus({       workspace = w }))
  hl.bind('ALT + SHIFT + ' .. w, hl.dsp.window.move({ workspace = w }))
end
