--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Emoji-Float

hl.window_rule({
    name = "hypremoji-float",
    match = { class = "dev.musagy.hypremoji" },
    float = true,
    center = true,
    size = { 600, 400 },
})

-- Steam-Fullscreen

hl.window_rule({
    name = "steam-games-fullscreen",
    match = { class = "steam_app_.*" },
    fullscreen = true,
})

-- Volume-Float

hl.window_rule({
    match = { class = "org.pulseaudio.pavucontrol" },
    float = true,
    size = "800 600",
    center = true,
})

-- Calcurse-Calendar

hl.window_rule({
    match = { class = "calcurse" },
    float = true,
    size = "900 600",
    center = true,
})