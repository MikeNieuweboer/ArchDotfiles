---@diagnostic disable: undefined-global
------------------
---- KEYBINDS ----
------------------

-- Use the wev tool to see exactly which key is pressed.
local mainMod = "SUPER"
local ipc = "noctalia msg "
local terminal = "kitty"
local fileManager = "dolphin"
local browser = "firefox"

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))

hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))

-- Session control
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(ipc .. "panel-toggle session"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("hyprshutdown -t 'Restarting Hyprland...'"), { long_press = true})

hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"), { release = true })

hl.bind("ALT + TAB", hl.dsp.exec_cmd(ipc .. " window-switcher"))


-- Multimedia keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. "media toggle"))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up 10"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down 10"))

-- Screenshots, + Super for fullscreen + Shift for annotation.
hl.bind("Print", hl.dsp.exec_cmd(ipc .. "screenshot-region"))
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(ipc .. "screenshot-fullscreen pick"))
hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd(ipc .. "screenshot-annotate"))

-- Move focus with mainMod + directions
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.move({ direction = "down" }))

local resize_jump = 100
local resize_speed = 0.6 -- Ratio of resize that is repeated.

hl.bind(mainMod .. " + CTRL + h", hl.dsp.window.resize({x=-resize_jump * (1 - resize_speed), y=0, relative=true}))
hl.bind(mainMod .. " + CTRL + j", hl.dsp.window.resize({x=0, y=resize_jump * (1-resize_speed), relative=true}))
hl.bind(mainMod .. " + CTRL + k", hl.dsp.window.resize({x=0, y=-resize_jump * (1-resize_speed), relative=true}))
hl.bind(mainMod .. " + CTRL + l", hl.dsp.window.resize({x=resize_jump * (1 - resize_speed), y=0, relative=true}))

hl.bind(mainMod .. " + CTRL + h", hl.dsp.window.resize({x=-resize_jump * resize_speed, y=0, relative=true}), { repeating=true})
hl.bind(mainMod .. " + CTRL + j", hl.dsp.window.resize({x=0, y=resize_jump * resize_speed, relative=true}) , { repeating=true})
hl.bind(mainMod .. " + CTRL + k", hl.dsp.window.resize({x=0, y=-resize_jump * resize_speed, relative=true}), { repeating=true})
hl.bind(mainMod .. " + CTRL + l", hl.dsp.window.resize({x=resize_jump * resize_speed, y=0, relative=true}) , { repeating=true})

hl.bind(mainMod .. " + TAB", hl.dsp.layout("togglesplit"))
