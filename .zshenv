export PATH="$HOME/Library/Application Support/fnm:$PATH"

# Codex sandbox cannot write to ~/.local/state; keep fnm multishell state writable there.
if [[ -n "$CODEX_SANDBOX" && -z "$XDG_STATE_HOME" ]]; then
  export XDG_STATE_HOME="${TMPDIR%/}/codex-xdg-state"
fi
