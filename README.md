# [Wezterm](https://wezfurlong.org/wezterm/index.html) Configuration

## Parallax Credit goes to Vicki Wenderlich for

- [Alien Spaceship](https://www.gameartguppy.com/shop/space-ship-background-repeatable-vertical/)

- [Space](https://www.gameartguppy.com/shop/space-background-repeatable-parallax/)

## Using this repo:

- backup your existing wezterm configs `mv ~/.config/wezterm ~/.config/wezterm.bak`
- Clone the repo to `~/.config/wezterm`

## Font

[Anonymous Pro with Ligatures](https://github.com/lemeb/a-better-ligaturizer)

## Screenshots

![Terminal](assets/wezterm.png)
![Parallax](assets/parallex.gif)

## Keys are configured in `./configs/keys.lua`

```lua
local wezterm = require("wezterm")
local act = wezterm.action
local keys = {
	{ key = "-", mods = "CTRL", action = act.DisableDefaultAssignment },
	{ key = "=", mods = "CTRL", action = act.DisableDefaultAssignment },
	{ key = "UpArrow", mods = "SHIFT", action = act.ScrollByLine(-1) },
	{ key = "a", mods = "LEADER|CTRL", action = act({ SendString = "\x01" }) },
	{ key = "-", mods = "LEADER", action = act({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	{
		key = "\\",
		mods = "LEADER",
		action = act({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
	},
	{ key = "z", mods = "LEADER", action = "TogglePaneZoomState" },
	{ key = "c", mods = "LEADER", action = act({ SpawnTab = "CurrentPaneDomain" }) },
	{ key = "h", mods = "LEADER", action = act({ ActivatePaneDirection = "Left" }) },
	{ key = "j", mods = "LEADER", action = act({ ActivatePaneDirection = "Down" }) },
	{ key = "k", mods = "LEADER", action = act({ ActivatePaneDirection = "Up" }) },
	{ key = "l", mods = "LEADER", action = act({ ActivatePaneDirection = "Right" }) },
	{ key = "H", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = { "Left", 5 } }) },
	{ key = "J", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = { "Down", 5 } }) },
	{ key = "K", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = { "Up", 5 } }) },
	{ key = "L", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = { "Right", 5 } }) },
	{ key = "1", mods = "LEADER", action = act({ ActivateTab = 0 }) },
	{ key = "2", mods = "LEADER", action = act({ ActivateTab = 1 }) },
	{ key = "3", mods = "LEADER", action = act({ ActivateTab = 2 }) },
	{ key = "4", mods = "LEADER", action = act({ ActivateTab = 3 }) },
	{ key = "5", mods = "LEADER", action = act({ ActivateTab = 4 }) },
	{ key = "6", mods = "LEADER", action = act({ ActivateTab = 5 }) },
	{ key = "7", mods = "LEADER", action = act({ ActivateTab = 6 }) },
	{ key = "8", mods = "LEADER", action = act({ ActivateTab = 7 }) },
	{ key = "9", mods = "LEADER", action = act({ ActivateTab = 8 }) },
	{ key = "&", mods = "LEADER|SHIFT", action = act({ CloseCurrentTab = { confirm = true } }) },
	{ key = "x", mods = "LEADER", action = act({ CloseCurrentPane = { confirm = true } }) },
	{ key = "n", mods = "SHIFT|CTRL", action = "ToggleFullScreen" },
	{ key = "r", mods = "LEADER", action = act.ReloadConfiguration },
	{ key = "c", mods = "SHIFT|CTRL", action = act.CopyTo("ClipboardAndPrimarySelection") },
	{ key = "v", mods = "SHIFT|CTRL", action = act.PasteFrom("Clipboard") },
	{
		key = "q",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}
return keys

```

## ZSH Theme

[Saint Johns Arms AZH Theme](https://github.com/sageil/saint-johns-arms-zsh-theme)
