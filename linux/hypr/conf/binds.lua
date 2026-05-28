-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for mor

-- Apps
hl.bind(MAIN_MOD.. " + RETURN",                  hl.dsp.exec_cmd(TERMINAL))
hl.bind(MAIN_MOD .. " + G",                      hl.dsp.exec_cmd(BROWSER))
hl.bind(MAIN_MOD .. " + E",                      hl.dsp.exec_cmd(FILE_MANAGER))
hl.bind(MAIN_MOD .. " + B",                      hl.dsp.exec_cmd("ghostty -e btop"))
hl.bind(MAIN_MOD .. " + D",                      hl.dsp.exec_cmd("discord"))
hl.bind(MAIN_MOD.. " + SHIFT + S",               hl.dsp.exec_cmd("steam"))

-- General
hl.bind(MAIN_MOD .. " + ALT + L",                hl.dsp.exec_cmd("hyprlock"))
hl.bind(MAIN_MOD .. " + P",                      hl.dsp.window.pseudo())
hl.bind(MAIN_MOD .. " + C",                      hl.dsp.window.close())
hl.bind(MAIN_MOD .. " + M",                      hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(MAIN_MOD .. " + V",                      hl.dsp.window.float())
hl.bind(MAIN_MOD.. " + SPACE",                   hl.dsp.exec_cmd(MENU))
hl.bind(MAIN_MOD.. " + F",                       hl.dsp.window.fullscreen())

-- Cycle windows
hl.bind(MAIN_MOD .. " + Tab",                    hl.dsp.window.cycle_next())
hl.bind(MAIN_MOD .. " + SHIFT + Tab",            hl.dsp.window.cycle_next({ next = false }))

-- Focus
hl.bind(MAIN_MOD.. " + H",                       hl.dsp.focus({ direction = "left" }))
hl.bind(MAIN_MOD.. " + L",                       hl.dsp.focus({ direction = "right" }))
hl.bind(MAIN_MOD.. " + K",                       hl.dsp.focus({ direction = "up" }))
hl.bind(MAIN_MOD.. " + J",                       hl.dsp.focus({ direction = "down" }))

-- Swap Windows
hl.bind(MAIN_MOD.. " + SHIFT + H",               hl.dsp.window.move({ direction = "left"  }))
hl.bind(MAIN_MOD.. " + SHIFT + L",               hl.dsp.window.move({ direction = "right" }))
hl.bind(MAIN_MOD.. " + SHIFT + K",               hl.dsp.window.move({ direction = "up"    }))
hl.bind(MAIN_MOD.. " + SHIFT + J",               hl.dsp.window.move({ direction = "down"  }))

-- Workspaces
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(MAIN_MOD.. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(MAIN_MOD.. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Move Floating Window
hl.bind(MAIN_MOD .. " + Left",  hl.dsp.window.move({ x = -80, y = 0,   relative = true }))
hl.bind(MAIN_MOD .. " + Right", hl.dsp.window.move({ x = 80,  y = 0,   relative = true }))
hl.bind(MAIN_MOD .. " + Up",    hl.dsp.window.move({ x = 0,   y = -80, relative = true }))
hl.bind(MAIN_MOD .. " + Down",  hl.dsp.window.move({ x = 0,   y = 80,  relative = true }))

-- Resize Windows
hl.bind(MAIN_MOD.. " + CTRL + right",            hl.dsp.window.resize({ x =  30, y =   0, relative = true }), { repeating = true })
hl.bind(MAIN_MOD.. " + CTRL + left",             hl.dsp.window.resize({ x = -30, y =   0, relative = true }), { repeating = true })
hl.bind(MAIN_MOD.. " + CTRL + up",               hl.dsp.window.resize({ x =   0, y = -30, relative = true }), { repeating = true })
hl.bind(MAIN_MOD.. " + CTRL + down",             hl.dsp.window.resize({ x =   0, y =  30, relative = true }), { repeating = true })

-- Mouse drag / resize
hl.bind(MAIN_MOD.. " + mouse:272",               hl.dsp.window.drag(),   { mouse = true })
hl.bind(MAIN_MOD.. " + mouse:273",               hl.dsp.window.resize(), { mouse = true })

-- Scroll through existing workspaces with MAIN_MOD+ scroll
hl.bind(MAIN_MOD.. " + mouse_down",              hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MAIN_MOD.. " + mouse_up",                hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with MAIN_MOD+ LMB/RMB and dragging
hl.bind(MAIN_MOD.. " + mouse:272",               hl.dsp.window.drag(),   { mouse = true })
hl.bind(MAIN_MOD.. " + mouse:273",               hl.dsp.window.resize(), { mouse = true })

-- Requires playerctl
hl.bind("XF86AudioNext",                         hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause",                        hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",                         hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",                         hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
