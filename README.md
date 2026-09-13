# Bid Ladder — AI Company Operating Headquarters

> This repository houses the AI operating system for Bid Ladder, not the product application.

## Purpose

This is the permanent home for Bid Ladder's AI company: organizational structure, agent contracts, strategic memory, decision records, task coordination, research standards, and future automation.

The Bid Ladder product itself is built separately, primarily through **Lovable**, in a dedicated product repository.

## Repository Layout

```text
README.md              ← This file
AGENTS.md              ← Standing instructions for every agent
AGENT_OFFICE.md        ← Agent Office operating framework
COMPANY.md             ← Company identity, mission, principles
CEO.md                 ← CEO contract: role, boundaries, autonomy
ROADMAP.md             ← Strategic roadmap and milestones
DECISIONS.md           ← Decision log and unresolved questions
agents/
    CEO.md             ← First executive agent definition
adapters/
    cursor.md          ← Cursor execution adapter
    grok-bot.md        ← Grok Bot fleets (DECISION-013 / 014)
    lovable.md         ← Product builder adapter
slack/
    OPERATING_SURFACE.md ← Proposed Slack surface (plan only)
    SETUP_CHECKLIST.md ← Founder-interactive Slack setup (do not enact here)
docs/
    PRODUCT.md         ← Product thesis and principles
    ARCHITECTURE.md    ← Product architecture outline
    DESIGN_SYSTEM.md   ← Design system contract
    ECONOMICS-POC.md   ← Economic hypotheses (intentionally unresolved)
    GROWTH.md          ← Growth and market strategy
    ANALYTICS.md       ← Analytics and event standards
    OPERATIONS.md      ← Operating procedures
    SECURITY.md        ← Security culture and boundaries
    RESEARCH.md        ← Research standards and questions
    EXPERIMENTS.md     ← Experiment registry
.planning/
    research/          ← Research notes
    decisions/         ← Decision drafts
    roadmap/           ← Milestone breakdowns
    templates/         ← agent-contract, job, decision
    validation/        ← Validation and scoring records
.cursor/               ← Cursor rules, agents, environment, Bugbot (PROPOSED)
scripts/
    validate.sh        ← Framework validation script
```

## Current State

- **Company:** Bid Ladder
- **First executive agent:** Bid Ladder CEO
- **Autonomy level:** Controlled / advisory
- **Primary builder:** Lovable (product repo `tanviiiiir-r/rising-star-board`)
- **Source of truth:** GitHub (`tanviiiiir-r/bid-ladder`)
- **Agent Office / Cursor adapter / Slack surface:** PROPOSED (DECISION-015 / 016 / 017) — not DECIDED

## Important Constraints

- Do not build the product application in this repository.
- Do not invent permanent economic values (prices, bids, credits, rewards).
- Do not create uncontrolled autonomous agents.
- Do not make major strategic or financial decisions without founder approval.

## Next Action

See [`ROADMAP.md`](./ROADMAP.md) and the latest handover report in [`outputs/`](./outputs/).
