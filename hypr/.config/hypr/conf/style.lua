-- Cursor
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "catppuccin-mocha-dark-cursors")
hl.env("XCURSOR_THEME", "catppuccin-mocha-dark-cursors")


hl.config({
    general = {
        -- Gaps and border
        gaps_in = 1,
        gaps_out = 2,
        gaps_workspaces = 10,

        border_size = 2,

        col = {
            active_border = "rgba(171, 233, 179, 1)",
            inactive_border = "rgba(102, 102, 102, .5)"
        },
        resize_on_border = true,

        no_focus_fallback = true,

        allow_tearing = true, -- This just allows the `immediate` window rule to work

        snap = {
            enabled = true,
            window_gap = 4,
            monitor_gap = 5,
            respect_gaps = true
        },

        layout = "master"
    },

    decoration = {
        -- 2 = circle, higher = squircle, 4 = very obvious squircle
        rounding_power = 2,
        rounding = 10,

        blur = {
            enabled = false
        },
        shadow = {
            enabled = false

        }
    },

    animations = {
        enabled = true
    },

    -- Layout Config
    master = {
        mfact = 0.5,
        smart_resizing = false
    },
})

hl.curve( "easeInOutCubic", { type = "bezier", points = { {0.65, 0}, {0.35, 1} } } )

local leafs = {"windows", "layers", "fade", "workspaces"}
for i = 1,#leafs,1 do 
    hl.animation({ leaf = leafs[i], enabled = true, speed = 2, bezier = "easeInOutCubic"}) 
end 