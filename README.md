# wcht.sh
Rewrote thePrimaegen's cht.sh script for tmux to work with wezterm as multiplexer

Can add the following snippet to wezterm configs to set a shortcut to call script
```lua
config.keys = {
	{
		key = "?",
		mods = "LEADER|SHIFT",
		action = act.SplitPane({
			direction = "Right",
			command = {
				args = {
					"wcht.sh",
				},
			},
			size = { Percent = 40 },
		}),
	}
}
```
