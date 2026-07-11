# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). The entry point is `init.lua` which bootstraps `lazy.nvim` and loads all plugins inline or via `require`.

## Structure

- `init.lua` — main config: options, keymaps, autocommands, and all plugin specs via `lazy.nvim`
- `lua/kickstart/plugins/` — kickstart-managed plugin configs (autopairs, debug, gitsigns, indent_line, lint, neo-tree, python)
- `lua/custom/plugins/` — user-added plugins (oil, smear_cursor, tabout, tmux, treesj, scroll, markmap, render_markdown); `init.lua` here returns `{}` (unused)
- `lua/lsp/` — LSP-specific helpers: `pyright.lua` (Python path detection), `gdscript.lua`

## Plugin Manager

Uses `lazy.nvim` (auto-bootstrapped on first launch). Most plugins are declared directly in `init.lua`; kickstart and custom plugins are loaded via:

```lua
{ import = 'kickstart.plugins' },
{ import = 'custom.plugins' },
```

To add a new plugin, either add a spec to `init.lua` or create a new file in `lua/custom/plugins/` that returns a lazy.nvim plugin spec table.

## Key Customizations

- **Leader**: `<Space>`
- **Godot integration**: auto-detects `project.godot` in cwd, starts a socket at `godothost` for the Godot LSP
- **Typst**: `<leader>tc` starts `typst watch`, `<leader>tr` opens PDF in zathura; `<leader>po`/`<leader>pc` for OmniPreview
- **Barbar tabs**: `<C-p>` pick buffer, `<C-x>` close buffer
- **Oil**: `-` opens parent directory
- **Code runner**: `<leader>rr/rf/rp/rc` via code-runner plugin
- **Python**: virtualenv at `~/.virtualenvs/neovim/bin/python3`; pyright LSP path auto-detected via `lua/lsp/pyright.lua`

## Adding LSP Servers

LSP servers are configured inside the `nvim-lspconfig` plugin block in `init.lua`. Add new servers to the `servers` table there. Mason handles automatic installation.
