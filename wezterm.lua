--!nocheck
local wezterm = require("wezterm")
local ssh_domains = require("configs.ssh")
local keys = require("configs.keys")
local mousebindings = require("configs.mouse")
local leader = { key = ".", mods = "SUPER" }
local inactive_pane_hsb = {
	hue = 1.0,
	saturation = 1.0,
	brightness = 1.0,
}

local config = {}
local function get_theme(appearance)
	if appearance:find("Dark") then
		return "MaterialOcean"
	else
		return "Material"
	end
end
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
	"Maple Mono NF",
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
config.font_size = 16.0
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.show_update_window = true
config.check_for_updates = true
config.mouse_bindings = mousebindings
config.window_background_opacity = 0.90
--config.text_background_opacity = 0.90
config.bold_brightens_ansi_colors = "BrightOnly"
config.color_scheme = get_theme(wezterm.gui.get_appearance())
config.default_cursor_style = "SteadyBar"
return config
