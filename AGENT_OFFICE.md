# Bid Ladder — Agent Office

Status of this framework: **PROPOSED** (DECISION-015). Files in this pull request install the office so the founder can approve it. They do not enact Slack, spend money, or change product economics.

## Purpose

The Agent Office is how Bid Ladder runs an AI company on GitHub:

- Contracts say who an agent is and what it must not do.
- Jobs say what work is requested.
- Decisions say what the founder approved.
- Adapters say which tool actually executes (Cursor, Grok Bot, Lovable).
- Slack, if approved, is the human operating surface — not a second source of truth.

GitHub (`tanviiiiir-r/bid-ladder`) remains company memory. Chat is not memory.

## Layout

```text
AGENTS.md                 ← Standing instructions for every agent
AGENT_OFFICE.md           ← This file
CEO.md / agents/CEO.md    ← First executive contract
COMPANY.md                ← Identity and classification rules
DECISIONS.md              ← Decision log
ROADMAP.md                ← Phases and milestones
adapters/
  cursor.md               ← Cursor Cloud / IDE adapter
  grok-bot.md             ← Grok Bot fleets (DECISION-013 / 014)
  lovable.md              ← Product builder adapter
slack/
  OPERATING_SURFACE.md    ← Proposed Slack surface (plan only)
  SETUP_CHECKLIST.md      ← Founder-interactive Slack setup (do not enact here)
.planning/templates/
  agent-contract.md
  job.md
  decision.md
.cursor/                  ← Cursor config (PROPOSED DECISION-016)
docs/                     ← Product/company briefs (not application code)
```

## Operating loop

```text
Founder request
    → CEO / orchestrator inspects GitHub + contracts
    → Job filed from .planning/templates/job.md (or GitHub issue)
    → Adapter selected (Cursor / Grok Bot / Lovable)
    → Draft on a feature branch or L1 artifact
    → PR + Bugbot (Cursor) or founder review (Grok Bot)
    → Founder approves merge / publish
    → Decision recorded if MAJOR
```

## Autonomy

| Work | Who may execute | Approval |
|---|---|---|
| Routine docs, templates, office hygiene | CEO / Cursor agents on a PR | Founder merges |
| Product implementation | Lovable in `rising-star-board` | Founder + briefs |
| Grok Bot fleet work | Named bots at **L1 Draft** | Founder; no routines on install |
| Slack app, channels, secrets | Founder (interactive) | DECISION-017 must be DECIDED first |
| Prices, bids, credits, rewards | Nobody | Founder + experiment + DECISION |
| Merge to `main`, production publish | Founder | Always |

Uncontrolled autonomous agents are forbidden (`CEO.md`, `docs/SECURITY.md`).

## Classification

Reuse `COMPANY.md`:

- **FACT** — verified and sourced.
- **HYPOTHESIS** — testable prediction.
- **ASSUMPTION** — believed true, not yet verified.
- **EXPERIMENT** — actively being tested.
- **DECISION** — approved and recorded in `DECISIONS.md`.

PROPOSED rows are not decisions. Do not treat them as DECIDED.

## Related proposals

| ID | Topic | Status |
|---|---|---|
| DECISION-015 | Adopt Agent Office as the company operating framework | PROPOSED |
| DECISION-016 | Cursor as Company OS execution adapter | PROPOSED |
| DECISION-017 | Slack operating surface; app lives in `bid-ladder-slack` | PROPOSED |
