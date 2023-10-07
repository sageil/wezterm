--!nocheck
local dimmer = { brightness = 0.1 }
local home = os.getenv("HOME")
local parallax = {
	-- This is the deepest/back-most layer. It will be rendered first
	{
		source = {
			File = { path = home .. "/.config/wezterm/Parallax/Backgrounds/bg_single.png" },

		},
		-- The texture tiles vertically but not horizontally.
		-- When we repeat it, mirror it so that it appears "more seamless".
		-- An alternative to this is to set `width = "100%"` and have
		-- it stretch across the display
		repeat_x = "Mirror",
		hsb = dimmer,
		-- When the viewport scrolls, move this layer 10% of the number of
		-- pixels moved by the main viewport. This makes it appear to be
		-- further behind the text.
		attachment = { Parallax = 0.1 },
	},
	-- Subsequent layers are rendered over the top of each other
	{
		source = {
			File = home .. "/.config/wezterm/Parallax/Backgrounds/Objects/space_object_planetsunrise@2x.png",
		},
		width = "100%",
		repeat_x = "NoRepeat",
		-- position the spins starting at the bottom, and repeating every
		-- two screens.
		vertical_align = "Bottom",
		repeat_y_size = "200%",
		hsb = dimmer,
		-- The parallax factor is higher than the background layer, so this
		-- one will appear to be closer when we scroll
		attachment = { Parallax = 0.2 },
	},
	{
		source = {
			File = home .. "/.config/wezterm/Parallax/Backgrounds/Objects/space_object_galaxy.png",
		},
		width = "100%",
		repeat_x = "NoRepeat",
		-- start at 10% of the screen and repeat every 2 screens
		vertical_offset = "20%",
		repeat_y_size = "200%",
		hsb = dimmer,
		attachment = { Parallax = 0.3 },
	},
	{
		source = {
			File = home .. "/.config/wezterm/Parallax/Backgrounds/Objects/space_object_anomaly@2x.png",
		},
		width = "100%",
		repeat_x = "NoRepeat",
		vertical_offset = "20%",
		repeat_y_size = "200%",
		hsb = dimmer,
		attachment = { Parallax = 0.4 },
	},
	{
		source = {
			File = home .. "/.config/wezterm/Parallax/Backgrounds/Objects/space_object_galaxy@2x.png",
		},
		width = "100%",
		repeat_x = "NoRepeat",
		vertical_offset = "20%",
		repeat_y_size = "200%",
		hsb = dimmer,
		attachment = { Parallax = 0.5 },
	},
	{
		source = {
			File = home .. "/.config/wezterm/Parallax/Backgrounds/Objects/space_object_planetsunrise@2x.png",
		},
		width = "100%",
		repeat_x = "NoRepeat",
		vertical_offset = "20%",
		repeat_y_size = "200%",
		hsb = dimmer,
		attachment = { Parallax = 0.6 },
	},
	{
		source = {
			File = home .. "/.config/wezterm/Parallax/Backgrounds/Objects/space_object_planetsunrise.png",
		},
		width = "100%",
		repeat_x = "NoRepeat",
		vertical_offset = "20%",
		repeat_y_size = "200%",
		hsb = dimmer,
		attachment = { Parallax = 0.7 },
	}
}
return parallax
