-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- hl.monitor({
--     output   = "",
--     mode     = "preferred",
--     position = "auto",
--     scale    = "auto",
-- })

hl.monitor({
    output   = "DP-1",
    mode     = "2560x1440@165",
    position = "0x0",
    scale    = 1,
})

hl.monitor({
    output   = "HDMI-A-2",
    mode     = "2560x1440@144",
    position = "2560x0",
    scale    = 1,
})
