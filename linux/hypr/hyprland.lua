-- This is patty's config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- Globals
MAIN_MOD = "SUPER"
TERMINAL = "ghostty"
BROWSER = "helium-browser"
FILE_MANAGER = "~/.config/hypr/scripts/yazi.sh"
MENU = "hyprlauncher"

------------------
---- MONITORS ----
------------------
require("conf.monitors")


--------------------
---- AUTOSTART ----
--------------------
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
