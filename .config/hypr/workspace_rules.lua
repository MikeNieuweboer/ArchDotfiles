---@diagnostic disable: undefined-global
--------------------
---- WORKSPACES ----
--------------------

-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.workspace_rule({ workspace = "1", default = true, persistent = true, monitor = "DP-1", default_name = "Web", on_created_empty = "firefox" })
hl.workspace_rule({ workspace = "2", default = true, persistent = true, monitor = "DP-1", default_name = "Code", on_created_empty = "kitty" })
hl.workspace_rule({ workspace = "3", default = true, persistent = true, monitor = "DP-1", default_name = "Main"})
hl.workspace_rule({ workspace = "8", default = true, persistent = true, monitor = "DP-1", default_name = "Media", layout = "scrolling" })
hl.workspace_rule({ workspace = "9", default = true, monitor = "DP-1", default_name = "Steam" })
hl.workspace_rule({ workspace = "10", default = true, monitor = "DP-1", default_name = "Games" })

hl.workspace_rule({ workspace = "special:keepass", on_created_empty = "keepassxc"})
