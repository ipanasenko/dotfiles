eval "$(/opt/homebrew/bin/brew shellenv)"


# Added by Toolbox App
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"


# Created by `pipx` on 2024-06-19 10:21:35
export PATH="$PATH:$HOME/.local/bin"


if command -v fnm >/dev/null 2>&1; then
  eval "$(fnm env --shell zsh --version-file-strategy recursive)"
  fnm use --install-if-missing >/dev/null 2>&1 || true
fi
