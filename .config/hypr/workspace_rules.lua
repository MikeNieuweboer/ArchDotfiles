---@diagnostic disable: undefined-global
--------------------
---- WORKSPACES ----
--------------------

-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.workspace_rule({ workspace = "1", default = true, persistent = true, monitor = "DP-1", default_name = "Web"})
hl.workspace_rule({ workspace = "2", default = true, persistent = true, monitor = "DP-1", default_name = "Code"})
hl.workspace_rule({ workspace = "3", default = true, persistent = true, monitor = "DP-1", default_name = "Main"})
hl.workspace_rule({ workspace = "8", default = true, persistent = true, monitor = "DP-1", default_name = "Media", layout = "scrolling" })
hl.workspace_rule({ workspace = "9", default = true, monitor = "DP-1", default_name = "Steam" })
hl.workspace_rule({ workspace = "10", default = true, monitor = "DP-1", default_name = "Games" })

hl.workspace_rule({ workspace = "special:keepass"})

-- Maps workspaces to autostart apps
local workspace_apps = {
  ["Web"] = "firefox",
  ["Code"] = "kitty",
  ["special:keepass"] = "keepassxc",
}

hl.on("workspace.created", function(w)
  if w.is_empty == false then return end
  local app = workspace_apps[w.name]
  if app == nil then return end
  hl.exec_cmd(app)
end)
