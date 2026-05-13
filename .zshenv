export PATH="$HOME/Library/Application Support/fnm:$PATH"

if command -v fnm >/dev/null 2>&1; then
  eval "$(fnm env --shell zsh --version-file-strategy recursive)"
  fnm use --install-if-missing >/dev/null 2>&1 || true
fi
