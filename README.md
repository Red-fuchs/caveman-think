# caveman-think

Compressed-output **and compressed-thinking** rules for any coding-agent harness. One ruleset, shipped in every format.

Differences to output-only "caveman" styles: the reasoning section (premise → logic → result, no hedging, no option narration) targets the model's *thinking*, and compression also covers reading (subagent reports, tool-output summaries).

Observed anecdotally: also makes weaker/free models more focused. No benchmark claims here; measure on your tasks.

## Install

| Harness | File / command |
|---|---|
| Claude Code | `skills/caveman-think/` → `~/.claude/skills/`, or `CLAUDE.md` |
| Agent Skills compatible (pi, Codex, opencode, …) | `skills/caveman-think/` |
| Codex, opencode, Amp, Jules, Zed, … | `AGENTS.md` |
| Gemini CLI | `GEMINI.md` |
| Cursor | `.cursor/rules/caveman-think.mdc` |
| GitHub Copilot | `.github/copilot-instructions.md` |
| Cline / Roo | `.clinerules/caveman-think.md` |
| Windsurf / Devin | `.devin/rules/caveman-think.md` (legacy `.windsurf/rules/`) |
| Continue | `.continue/rules/caveman-think.md` |
| pi coding agent | `skills/caveman-think/` → `~/.pi/agent/skills/` (global) or `.pi/skills/` (project); also reads `AGENTS.md` |
| Roo Code | `.roo/rules/` (also reads `AGENTS.md`) |
| Kilo Code | `.kilo/rules/` (legacy `.kilocode/rules/`) |
| Goose | `.goosehints` |
| Zed | `.rules` (first match wins; falls back to `AGENTS.md`) |
| Qwen Code | `QWEN.md` |
| JetBrains Junie | `AGENTS.md` (legacy `.junie/guidelines.md`) |
| Aider | `CONVENTIONS.md` (`aider --read CONVENTIONS.md`) |

Script: `scripts/install.sh` (global skills) or `scripts/install.sh /path/to/project` (copies rule files, never overwrites).

German variant: `skills/caveman-think-de/`.

Single source of truth: `rules/core.md`; other files are copies. Regenerate with `scripts/sync.sh`.

## Limits
- Thinking compression works only where the harness lets instructions reach the reasoning (system/rule prompt). Hidden/summarized thinking can't be controlled.
- Deactivates for chat, explanations, and short answers by design.

MIT
