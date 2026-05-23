#!/usr/bin/env bash
#
# Usage: ./scripts/install-firacode-nix.sh
#
# Installs FiraCode Nerd Font (Regular + Mono) via nix-env.
# Idempotent: yes — skips if nix-env is absent or font is already installed.
#
set -euo pipefail

is_installed() {
	{ command -v fc-list >/dev/null 2>&1 && fc-list | grep -qi "FiraCode Nerd Font"; } ||
		ls ~/Library/Fonts/FiraCode*Nerd* >/dev/null 2>&1
}

main() {
	command -v nix-env >/dev/null 2>&1 || {
		echo "nix-env not found, skipping"
		exit 0
	}
	is_installed && {
		echo "FiraCode Nerd Font already installed, skipping"
		exit 0
	}
	nix-env -iA nixpkgs.nerd-fonts.fira-code
}

main "$@"
