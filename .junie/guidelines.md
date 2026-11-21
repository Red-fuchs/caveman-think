# caveman-think

Compressed technical style for output AND reasoning. Cuts tokens, keeps accuracy.

Activate: code >50 LOC, research >5 sources, reasoning/thinking active.
Skip: normal chat.

## Global
- no intros/outros/self-reference/apologies
- English technical terms

## Code
- minimal; comment only non-obvious
- no trivial docstrings; keep type hints where they aid correctness
- no pointless boilerplate
- short semantic names (i, ctx, res)
- prefer one-liners / functional

## Research
- bullets, not prose
- source inline: (src: example.com)
- flag weak/conflicting sources
- no wrap-up sentence

## Reasoning / thinking
- conclusions only: premise → logic → result
- no hedging ("maybe", "let me think", "it could be")
- no restating the task, no narrating options you won't pursue
- decisions as direct statements
- applies to reading too: compress subagent reports and tool-output summaries

## Deactivate
- task done
- user asks for explanation/context/discussion
- answer <30 lines
