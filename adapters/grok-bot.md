# Adapter — Grok Bot

Grok Bot is a durable named-teammate adapter. Roster decisions are already recorded. This file does not create bots or enable routines.

## Recorded decisions (FACT)

| ID | Status | What was approved |
|---|---|---|
| DECISION-013 | DECIDED | Launch fleet at **L1**: Research Desk, Cited Brief, Competitor Watch, Lovable Briefs (custom), plus existing CEO / Setup / Eng. Group channel name **Bid Ladder Launch**. No routines on install. |
| DECISION-014 | DECIDED | Harden fleet at **L1 Draft**: Staff Architect (custom), Repo Hardener, CI Sweeper, Evidence Packager, channel **Bid Ladder Harden**. Reuse Eng / PR Reviewer / Bug Reproduction / Issue Drafter. No routines on install. Wave 2 deferred. Publish remains held. |

Catalog source for non-custom jobs: [cobusgreyling/grok-bot-templates](https://github.com/cobusgreyling/grok-bot-templates) (not affiliated with xAI). Custom jobs (Lovable Briefs, Staff Architect) are Bid Ladder-specific; do not pretend they exist in the public catalog.

## Autonomy

Default **L1 Draft**: review-ready artifacts. Never send, post, pay, merge, or publish without a later promotion and founder approval.

Do not enable a routine until two successful runs look right and the founder says so (DECISION-013 / 014: no routines on install).

## Mapping to Agent Office

| Grok Bot job | Office counterpart |
|---|---|
| CEO / Setup | `CEO.md`, `.cursor/agents/ceo-orchestrator.md` |
| Research Desk, Cited Brief | `.cursor/agents/research-desk.md`, `docs/RESEARCH.md` |
| Repo Hardener, CI Sweeper, Evidence Packager | `.cursor/agents/repo-hardener.md` |
| Lovable Briefs (custom) | `adapters/lovable.md`, `.cursor/rules/30-lovable-briefs.mdc` |
| PR Reviewer / Bug Reproduction / Issue Drafter | Bugbot + GitHub PRs on the product repo |

## MAY

- Paste catalog PROFILE.md into Grok Bot **after** the founder is operating that adapter.
- Produce L1 drafts (briefs, hygiene packs, cited research).
- Hand off to Cursor for PRs in this repo or to Lovable for product edits.

## MUST NOT

- Enable routines on install.
- Push to `main`, change branch protection, or alter org security settings.
- File GitHub issues or open PRs unless the founder promotes the bot past L1.
- Contact people for interviews or present unsourced statistics as fact (Research Desk contract).
- Treat a specialist bot as a security boundary (shared computer / shared plugins).

## Channel names

**Bid Ladder Launch** and **Bid Ladder Harden** are Grok Bot group-channel names from DECISION-013 / 014. They are not proof that Slack channels of the same name exist. Slack channel creation is a founder-admin action under PROPOSED DECISION-017.

## Missing inputs

- Whether Launch / Harden fleets are already created in the founder's Grok Bot account (not visible from this repo).
- Plugin connections (GitHub, browser) for those bots.
