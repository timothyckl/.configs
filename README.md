
This repository contains configuration files and scripts that describe and set up my development environment.

## File Structure

```bash
.
├── alacritty
│   └── alacritty.toml
├── nvim
│   ├── init.lua
│   ├── lazy-lock.json
│   └── lua
│       ├── plugins
│       │   └── ... 
│       └── settings.lua
├── README.md
└── setup-script.sh
```

## Main Tools 

- **Alacritty**: Fast GPU-accelerated terminal emulator with custom font, colors, opacity, and keybindings.
- **Neovim**: Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugins, Catppuccin Mocha theme, LSP for Python, Lua, and C/C++.
- **Shell**: Zsh with custom aliases and prompts.
- **Tmux**: Session management and custom status bar.

## Run Setup Script

```bash
# method 1
bash setup-script.sh 

# method 2 
chmod +x setup-script.sh
./setup-script.sh
```
> [!NOTE]
> This script is probably missing a few components I probably overlooked, but the most essential ones are there.


🧰 Notes

- Fonts used: FiraCode Nerd Font
- Theme: Catppuccin Mocha applied across Neovim and Alacritty
- Platform: macOS / Linux compatible

🪄 Tips

- `alacritty --config-file ~/.config/alacritty/alacritty.toml` to launch with this config
- `:checkhealth` in Neovim to verify plugin setup
- `Ctrl + s` for Tmux session management
- `source ~/.zshrc` to refresh shell config changes
