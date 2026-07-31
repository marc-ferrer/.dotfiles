local colors = require("themes.colors")
-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
	input = {
		kb_layout = "es",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = 0,
		-- -1.0 - 1.0, 0 means no modification.
		touchpad = {
			natural_scroll = false,
		},
	},
    general = {
        gaps_in = 4,
        gaps_out = 4,
        border_size = 1,
        -- https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors
        -- col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
        -- col.inactive_border = rgba(595959aa)
        -- Set to true enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,
        -- Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
        allow_tearing = false,
        layout = "dwindle",
        col = {
            active_border = { colors = { colors.secondary, colors.tertiary }, angle = 45 },
            inactive_border = colors.outline_variant,
        },
    },
    decoration = {
        rounding = 4,
        rounding_power = 2,
        -- Change transparency of focused and unfocused windows
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        -- https://wiki.hyprland.org/Configuring/Variables/#blur
        blur = {
            enabled = true,
            size = 10,
            passes = 3,
            vibrancy = 0.1696,
        },
    },
    animations = {
        enabled = true,
    },
	gestures = {
		-- workspace_swipe = false
	},
	misc = {
		force_default_wallpaper = 0, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
	},
})
