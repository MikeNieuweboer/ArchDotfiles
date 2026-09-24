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

-------------------------
---- Restart windows ----
-------------------------
hl.on("window.close", function()
  local active_w = hl.get_active_workspace()
  if active_w.windows == 1 and active_w.id == 2 then
    hl.exec_cmd("kitty")
  end
end)

hl.on("window.move_to_workspace", function()
  local active_w = hl.get_active_workspace()
  if active_w.windows == 1 and active_w.id == 2 then
    hl.exec_cmd("kitty")
  end
end)
