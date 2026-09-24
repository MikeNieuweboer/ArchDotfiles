---@diagnostic disable: undefined-global
--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/

-- Example window rules that are useful


local suppressMaximizeRule = hl.window_rule({
  -- Ignore maximize requests from all apps. You'll probably like this.
  name           = "suppress-maximize-events",
  match          = { class = ".*" },

  suppress_event = "maximize",
})
suppressMaximizeRule:set_enabled(true)

hl.window_rule({
  -- Fix some dragging issues with XWayland
  name     = "fix-xwayland-drags",
  match    = {
    class      = "^$",
    title      = "^$",
    xwayland   = true,
    float      = true,
    fullscreen = false,
    pin        = false,
  },

  no_focus = true,
})

-- Noctalia settings (make it floating)
hl.window_rule({
  match = { class = "dev.noctalia.Noctalia" },
  float = true,
  size = { 1080, 920 },
})

-- Set opacity to 1.0 active, 0.5 inactive and 0.8 fullscreen for kitty
hl.window_rule({
  match   = { class = "(kitty|thunar)" },
  opacity = "0.95 override 0.85 override 0.9 override",
})

-- Media workspace
hl.window_rule({
  match = { class = "(Spotify|vesktop)"},
  workspace = "8",
  opacity = "0.95",
  size = {"(monitor_w*0.75)", "(monitor_h*0.75)"},
})

hl.window_rule({
  match = { class = "org.keepassxc.KeePassXC"},
  workspace = "special:keepass",
  pseudo = true,
  size = {"(monitor_w*0.75)", "(monitor_h*0.75)"},
  float = true,
})

hl.window_rule({
  match = { class = "firefox" },
  focus_on_activate = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
-- hl.window_rule({
--     name  = "move-hyprland-run",
--     match = { class = "hyprland-run" },

--     move  = "20 monitor_h-120",
--     float = true,
-- })

-- Move kitty to 100 100 and add an anim style (named rule)
-- hl.window_rule({
--   name      = "move-kitty",
--   match     = { class = "kitty" },
--   move      = {100, 100},
--   animation = "popin",
-- })

-- Disable blur for firefox
-- hl.window_rule({ match = { class = "kitty" }, no_blur = true })

-- Move kitty to the center of the cursor
-- hl.window_rule({
-- match = { class = "kitty" },
-- move  = {"cursor_x-(window_w*0.5)", "cursor_y-(window_h*0.5)"},
-- })

-- Set border color to red if window is fullscreen
-- hl.window_rule({
--   match        = { fullscreen = true },
--   border_color = "rgb(FF0000) rgb(880808)",
-- })

-- Set opacity to 1.0 active, 0.5 inactive and 0.8 fullscreen for kitty
-- hl.window_rule({
--   match   = { class = "kitty" },
--   opacity = "1.0 override 0.5 override 0.8 override",
-- })

-- hl.window_rule({
--   match   = { class = "firefox" },
--   opacity = "1.0 override 0.5 override 0.8 override",
-- })
-- Set rounding to 10 for kitty
-- hl.window_rule({ match = { class = "kitty" }, rounding = 10 })
