# Dotfiles

A personal dotfiles setup managed by [Dotbot](https://github.com/anishathalye/dotbot).

## How it works

Run `./install` to bootstrap the environment. It will:
1. Initialize the Dotbot submodule
2. Run shell commands (clone repos, install tools)
3. Create symlinks from `~` to files in this repo

External repos (oh-my-zsh, plugins, tpm, etc.) are cloned into `git-clones/` at install time and symlinked into place. The `git-clones/` directory is not committed.

## File responsibilities

| File | Add here when you want to... |
|---|---|
| `env` | Export env vars available everywhere (`PATH`, `EDITOR`, API keys) |
| `zshenv` | Change how env vars are loaded (rarely touch this) |
| `zshrc` | Add zsh plugins, hooks, shell behavior, tool activations (`direnv`, `zoxide`) |
| `zprofile` | Login-only setup (rarely needed) |
| `p10k.zsh` | Change your prompt — run `p10k configure` instead of editing manually |
| `alias` | Add shell aliases (`alias ll='ls -la'`) |
| `vimrc` | Vim settings and plugins |
| `config/git/config` | Git settings |
| `config/git/ignore` | Files to globally ignore in all git repos |
| `config/mise/config.toml` | Add/remove dev tools to install (`node`, `python`, `fzf`, etc.) |
| `config/tmux/tmux.conf` | Tmux keybindings, plugins, status bar |
| `config/direnv/direnv.toml` | Direnv global settings |
| `config/just/justfile` | Global just recipes available everywhere |
| `config/bat/config` | bat display settings (theme, style) |
| `config/powerline/` | Powerline theme/colors |
| `bin/` | Personal scripts available as commands |

## Machine-specific overrides

These files are sourced but not committed — create them locally for machine-specific settings:

- `~/.env.local` — extra env vars
- `~/.alias.local` — extra aliases
- `~/.zshrc.local` — extra zsh config
- `~/.zprofile.local` — extra login config
- `~/.config/git/config.local` — extra git config (e.g. `user.email`)
