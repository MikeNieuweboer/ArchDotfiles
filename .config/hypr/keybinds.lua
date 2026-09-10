------------------
---- KEYBINDS ----
------------------

-- Use the wev tool to see exactly which key is pressed.
local mainMod = "SUPER"
local ipc = "noctalia msg " 

-- Multimedia keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up 10"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down 10"))

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. "media toggle"))

