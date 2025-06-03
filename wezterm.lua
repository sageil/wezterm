--!nocheck
local wezterm = require("wezterm")
local ssh_domains = require("configs.ssh")
--to change the parallax to spaceship, replace local parallax = require("configs.space") with
-- local parallax = require("configs.aliens_spaceship")
--local parallax = require("configs.aliens_spaceship")
local keys = require("configs.keys")
local mousebindings = require("configs.mouse")
local leader = { key = ".", mods = "SUPER" }
local inactive_pane_hsb = {
	hue = 1.0,
	saturation = 1.0,
	brightness = 1.0,
}

-- uncomment the function below to change theme appearance based on current mode
-- then use config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
--
-- local function scheme_for_appearance(appearance)
-- 	if appearance:find("Dark") then
-- 		return "Catppuccin Macchiato"
-- 	else
-- 		return "Catppuccin Latte"
-- 	end
-- end
local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end
config.set_environment_variables = {
	PATH = "/opt/homebrew/bin:" .. os.getenv("PATH"),
}
config.leader = leader
config.keys = keys
config.inactive_pane_hsb = inactive_pane_hsb
config.ssh_domains = ssh_domains
config.font = wezterm.font_with_fallback({
	"DankMono Nerd Font Mono",
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
config.use_fancy_tab_bar = false
config.show_update_window = true
config.check_for_updates = true
config.window_decorations = "RESIZE"
--config.window_decorations = "TITLE|RESIZE|MACOS_USE_BACKGROUND_COLOR_AS_TITLEBAR_COLOR"
config.color_scheme_dirs = { "./colors/" }
config.mouse_bindings = mousebindings
config.window_background_opacity = 0.7
config.text_background_opacity = 0.8
--config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
config.color_scheme = "rose-pine-moon"
config.colors = {
	selection_bg = "#3e8fb0",
}
config.default_cursor_style = "SteadyBar"
return config
