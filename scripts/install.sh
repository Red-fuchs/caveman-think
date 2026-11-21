#!/bin/sh
# usage: install.sh [target-project-dir]   (omit = global installs where supported)
set -e
R="$(cd "$(dirname "$0")/.." && pwd)"; T="${1:-}"
if [ -z "$T" ]; then
  for d in "$HOME/.claude/skills" "$HOME/.pi/agent/skills" "$HOME/.agents/skills" "$HOME/.codex/skills"; do
    [ -d "$(dirname "$d")" ] && mkdir -p "$d" && cp -R "$R/skills/caveman-think" "$d/" && echo "skill -> $d/caveman-think"
  done
  echo "Global rule files (no skill support): append rules/core.md to ~/.claude/CLAUDE.md, ~/.codex/AGENTS.md, ~/.gemini/GEMINI.md manually."
else
  cd "$R"; for f in AGENTS.md CLAUDE.md GEMINI.md CONVENTIONS.md QWEN.md .goosehints .rules .roo .kilocode .junie .pi .github/copilot-instructions.md .cursor .clinerules .windsurf .continue; do
    mkdir -p "$T/$(dirname "$f")"; [ -e "$T/$f" ] && echo "skip (exists): $f" || { cp -R "$f" "$T/$f"; echo "+ $f"; }
  done
fi
