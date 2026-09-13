# Slack operating surface (plan only)

Status: **PROPOSED** (DECISION-017). This document is a plan. It is not authorization to create a Slack app, create channels, store secrets, or create `tanviiiiir-r/bid-ladder-slack`.

## Intent

If the founder approves DECISION-017, Slack becomes the **human operating surface** for Bid Ladder agents:

- Founder sees status, decisions, blockers, and approval requests (see `docs/OPERATIONS.md`).
- GitHub remains the source of truth. Slack is not company memory.
- The Slack Bolt app lives in its **own** repository: `bid-ladder-slack` (does not exist as of 2026-09-13).

**FACT:** `GET https://api.github.com/repos/tanviiiiir-r/bid-ladder-slack` returned 404 on 2026-09-13. Do not treat the repo as created.

## What belongs where

| Concern | Location |
|---|---|
| Company OS, decisions, adapters | `tanviiiiir-r/bid-ladder` (this repo) |
| Product application | `tanviiiiir-r/rising-star-board` |
| Slack Bolt app, manifests, listeners | `tanviiiiir-r/bid-ladder-slack` (**not created**) |

Do not put Slack application code in this Company OS repo.

## Proposed channel map

Grok Bot already has approved **group channel names** (not Slack facts):

| Name | Source | Proposed Slack use (HYPOTHESIS) |
|---|---|---|
| Bid Ladder Launch | DECISION-013 | Launch fleet traffic; research and Lovable briefs |
| Bid Ladder Harden | DECISION-014 | Hardening fleet traffic; hygiene packs |

**ASSUMPTION:** Additional founder-only channels (approvals, incidents) may be useful. Do not create them until the founder, as workspace admin, names them.

Channel creation in a Slack workspace is an **interactive founder / workspace-admin** action. Agents must not invent channel IDs.

## Proposed app shape (HYPOTHESIS)

A later `bid-ladder-slack` repo would likely be a Bolt app (Socket Mode or HTTP) that:

- Posts CEO-format updates the founder asked for.
- Accepts approve / reject actions that are then recorded in `DECISIONS.md` via GitHub (never the other way around).
- Does not auto-merge, auto-publish, or auto-spend.

Exact Bolt stack, event subscriptions, and interactivity payloads are **not specified**. Do not fabricate an app ID, team ID, or manifest.

## Secrets (founder-held)

When (and only when) DECISION-017 is DECIDED and the Slack app repo exists, the founder must provision secrets **outside git**:

| Secret | Why |
|---|---|
| `SLACK_BOT_TOKEN` | Bot user OAuth token (`xoxb-`) |
| `SLACK_SIGNING_SECRET` | Request signature verification |
| `SLACK_APP_TOKEN` | App-level token for Socket Mode (`xapp-`) |
| `GITHUB_TOKEN` | GitHub API for issues/PRs/status from the Slack app |

Agents must not invent values, commit these, or paste them into chat. Founder stores them in the Slack app host's secret manager.

## Interactive founder actions (blockers)

These cannot be done by a background agent:

1. **Slack login** — authenticate to the target workspace (Slack CLI `slack login` and/or api.slack.com).
2. **Workspace-admin channel creation** — create Launch / Harden (and any founder-named) channels; invite the bot.
3. **Slack app creation** — create the app at api.slack.com (or Slack CLI) in a repo that does not exist yet.
4. **Secret issuance** — copy `SLACK_BOT_TOKEN`, `SLACK_SIGNING_SECRET`, `SLACK_APP_TOKEN` from the Slack app config.
5. **GitHub token** — issue a least-privilege `GITHUB_TOKEN` for the Slack app identity.
6. **Create `tanviiiiir-r/bid-ladder-slack`** — founder (or an agent after explicit DECISION) creates the empty app repo.

Until those happen, the operating surface stays: GitHub PRs + Cursor / Grok Bot / Lovable.

## Verification of this plan

| Check | Result |
|---|---|
| Slack app code is out of Company OS | This repo has plan docs only |
| Slack app repo named | `bid-ladder-slack` — **missing** (404) |
| Secrets named, not valued | Names listed; no tokens present |
| Channel names sourced | Launch / Harden from DECISION-013 / 014 only |
| Founder interactive steps flagged | Login, admin channels, four Slack/GitHub secrets |
| Enactment | **Not done** |

## Related

- Checklist: `slack/SETUP_CHECKLIST.md`
- Proposal: DECISION-017 in `DECISIONS.md`
