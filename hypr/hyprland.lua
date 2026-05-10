-- This is patty's config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/


------------------
---- MONITORS ----
------------------
require("conf.monitors")


---------------------
---- MY PROGRAMS ----
---------------------

local terminal        = "ghostty"
local fileManager     = "dolphin"
local menu            = "hyprlauncher"
local internetBrowser = "firefox"
local ide             = "code"


-------------------
---- AUTOSTART ----
-------------------
require("conf.autostart")


---------------------
---- KEYBINDINGS ----
---------------------
require("conf.binds")


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
require("conf.environments")


--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
require("conf.windowrules")
require("conf.workspacerules")
