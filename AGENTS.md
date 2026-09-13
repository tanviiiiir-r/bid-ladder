# Bid Ladder — Agent Instructions (Company OS)

This repository is the **Bid Ladder AI Company Operating Headquarters**. It is not the product application.

Agents working here must treat this file as standing instructions. Nested rules in `.cursor/rules/` add Cursor-specific enforcement. Canonical identity lives in `COMPANY.md`. Canonical CEO contract lives in `CEO.md`.

## What this repo is

- Company identity, agent contracts, decisions, roadmap, research standards, and Agent Office adapters.
- The permanent GitHub source of truth for the AI company (DECISION-000).

## What this repo is not

- The Bid Ladder product app. Product code lives in `tanviiiiir-r/rising-star-board` (DECISION-002).
- A place to invent prices, bids, credits, rewards, or fake activity.
- A Slack app. If Slack is approved, the Bolt app belongs in a separate repo named `bid-ladder-slack` (PROPOSED DECISION-017). Do not create that repo from here unless the founder approves.

## Inspect before acting

1. Read `COMPANY.md`, `CEO.md`, `ROADMAP.md`, `DECISIONS.md`, and `AGENT_OFFICE.md`.
2. Inspect the GitHub state of this repo. Do not assume local files match remote.
3. If the task touches product, inspect `tanviiiiir-r/rising-star-board` — do not copy product code into this repo.
4. Label every material claim **FACT**, **HYPOTHESIS**, **ASSUMPTION**, **EXPERIMENT**, or **DECISION**.

## Governance

- Do not fabricate decisions, prices, bids, credits, rewards, users, or rankings.
- Routine documentation and organization may proceed on a feature branch + pull request.
- MAJOR strategic, financial, or destructive changes need founder approval and a `DECISION-XXX` record.
- Propose decisions. Do not mark them `DECIDED` unless the founder has approved.
- Founder approves merges. Do not merge to `main`. Never force-push or rewrite published history.

## Adapters

Work is executed through adapters, not by stuffing product code into this repo:

| Adapter | Role | Spec |
|---|---|---|
| Cursor | Company OS execution (rules, agents, PRs, Bugbot) | `adapters/cursor.md` |
| Grok Bot | Named fleets at L1 Draft (DECISION-013, DECISION-014) | `adapters/grok-bot.md` |
| Lovable | Product builder in the product repo | `adapters/lovable.md` |

Slack is a proposed founder operating surface (`slack/OPERATING_SURFACE.md`). Plan only until DECISION-017 is approved and the founder completes interactive setup.

## Pull requests

- Branch from `main`. Open a PR. Do not push directly to `main`.
- Ask Bugbot to review. Address real findings. Do not silence governance rules to land a diff.
- Keep the branch in a working state.

## Output

Recommendations use the CEO format in `CEO.md`: OBSERVATION / EVIDENCE / IMPACT / RECOMMENDATION / PRIORITY / SCOPE / CONFIDENCE.
