--!nocheck
local wezterm = require("wezterm")
local ssh_domains = require("configs.ssh")
--to change the parallax to spaceship, replace local parallax = require("configs.space") with
-- local parallax = require("configs.aliens_spaceship")
--local parallax = require("configs.aliens_spaceship")
local keys = require("configs.keys")
local mousebindings = require("configs.mouse")
local leader = { key = "a", mods = "CTRL" }
local inactive_pane_hsb = {
	hue = 1.0,
	saturation = 1.0,
	brightness = 1.0,
}
local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Macchiato"
	else
		return "Catppuccin Latte"
	end
end
local config = {}
config.leader = leader
config.keys = keys
config.inactive_pane_hsb = inactive_pane_hsb
config.ssh_domains = ssh_domains
config.font = wezterm.font_with_fallback({
	"Anonymous Pro",
	harfbuzz_features = { "cv29", "cv30", "ss01", "ss03", "ss06", "ss09" },
	{ family = "Symbols Nerd Font Mono", scale = 0.75 },
})
config.window_close_confirmation = "NeverPrompt"
config.skip_close_confirmation_for_processes_named = {
	"bash",
	"sh",
	"zsh",
	"tmux",
	"nu",
	"zsh",
	"nvim",
}
--

config.window_padding = {
	left = "1cell",
	right = "1cell",
	top = "0.5cell",
	bottom = "0.5cell",
}
config.enable_tab_bar = false
config.force_reverse_video_cursor = true
config.audible_bell = "Disabled"
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 20.0
config.enable_scroll_bar = false
--config.min_scroll_bar_height = "2cell"
-- config.background = parallax
config.use_fancy_tab_bar = false
config.show_update_window = true
config.check_for_updates = true
--config.color_scheme_dirs = { "./colors/" }
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
config.mouse_bindings = mousebindings.mouse_bindings
return config
