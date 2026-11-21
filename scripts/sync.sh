#!/bin/sh
set -e; cd "$(dirname "$0")/.."; C=rules/core.md
for f in AGENTS.md CLAUDE.md GEMINI.md CONVENTIONS.md .github/copilot-instructions.md .clinerules/caveman-think.md .continue/rules/caveman-think.md; do cp $C $f; done
{ printf -- '---\ndescription: caveman-think compressed style\nalwaysApply: true\n---\n'; cat $C; } > .cursor/rules/caveman-think.mdc
{ printf -- '---\ntrigger: always_on\n---\n'; cat $C; } > .windsurf/rules/caveman-think.md
{ printf -- '---\nname: caveman-think\ndescription: Ultra-compressed technical style for code (>50 LOC), research (>5 sources) and reasoning/thinking. Cuts output and thinking tokens, keeps accuracy. Not for normal chat.\n---\n\n# caveman-think\n'; tail -n +3 $C; } > skills/caveman-think/SKILL.md
