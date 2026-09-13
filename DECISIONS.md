# Bid Ladder — Decision Log

## Format

```text
ID: DECISION-XXX
Date: YYYY-MM-DD
Topic:
Decision:
Rationale:
Status: DECIDED / PROPOSED / OPEN
Approver:
```

## Recorded Decisions

```text
ID: DECISION-000
Date: 2026-09-12
Topic: Phase 1 founder kickoff acceptance
Decision: Accept Phase 1 AI Company OS kickoff; make GitHub (tanviiiiir-r/bid-ladder) the permanent source of truth for company documentation; proceed to sync local company OS and then open DECISION-002 / DECISION-003.
Rationale: Local docs validated BOT READY (100/100). Kickoff report recommended product repo + Lovable next. Founder approved in CEO chat 2026-09-12.
Status: DECIDED
Approver: Founder (Tanvir)
```

```text
ID: DECISION-001
Date: 2026-09-12
Topic: Initial launch market / ecosystem
Decision: Launch wedge is a Product Hunt–style early-stage maker cohort, global (internet-native). First category focus: AI / SaaS / tools. Do not launch as a generic worldwide directory. Do not clone Outbid.lol pay-to-rank as the truth layer. Geography is global per DECISION-010 (not Bangladesh).
Rationale: Research Desk DECISION-001 brief (2026-09-12) showed makers already compete on public boards and pay for adjacent visibility; PH-style cohort maximizes density + reachability + competitive behavior. Founder approved in CEO chat while holding Lovable (DECISION-003).
Status: DECIDED
Approver: Founder (Tanvir)
```

```text
ID: DECISION-002
Date: 2026-09-12
Topic: Product repository name and location
Decision: Canonical product GitHub repository is tanviiiiir-r/rising-star-board (public, Lovable two-way sync). Company OS remains tanviiiiir-r/bid-ladder. Product code must not live in the company OS repo. Prior name bid-ladder-app is retired (Lovable cannot attach to an existing repo; keep the Lovable-created sync repo and rename/use it as rising-star-board).
Rationale: Founder directed 2026-09-12 to keep rising-star-board as primary product repo, fold bid-ladder-app contents into it, and stop using bid-ladder-app. Separates product build surface from AI company OS while matching Lovable's create-only GitHub sync model.
Status: DECIDED
Approver: Founder (Tanvir)
```

```text
ID: DECISION-003
Date: 2026-09-12
Topic: Lovable account / project setup
Decision: Unhold Lovable. Install and authenticate Lovable connector. Create Lovable project Bid Ladder (id 6e05f72b-e75f-4175-a163-ef7e3b9791d9) in workspace "tanvir's Lovable" with thin-MVP brief. Target GitHub sync to tanviiiiir-r/rising-star-board (amended with DECISION-002). Editor: https://lovable.dev/projects/6e05f72b-e75f-4175-a163-ef7e3b9791d9
Rationale: Founder requested Lovable setup for ASAP thin MVP build after DECISION-001 locked and MVP briefs drafted.
Status: DECIDED
Approver: Founder (Tanvir)
```

```text
ID: DECISION-010
Date: 2026-09-12
Topic: Geographic scope at launch
Decision: Launch targets global internet-native markets. Do not target Bangladesh (or BD-only boards such as BanglaLaunch / BDHunt) as the launch geography.
Rationale: Founder stated explicitly in CEO chat: not targeting Bangladesh now; targeting global markets.
Status: DECIDED
Approver: Founder (Tanvir)
```

```text
ID: DECISION-013
Date: 2026-09-12
Topic: Launch Grok Bot agent roster (pre-employee)
Decision: Create Bid Ladder Launch fleet at L1: Research Desk, Cited Brief, Competitor Watch, Lovable Briefs (custom), plus existing CEO / Setup / Eng. Group channel "Bid Ladder Launch". No routines on install. Employees / additional specialists after launch as scaling.
Rationale: Founder approved roster after review of cobusgreyling/grok-bot-templates mapped to Bid Ladder needs. Catalog bots adapted; Lovable Briefs custom for Phase 2 briefs.
Status: DECIDED
Approver: Founder (Tanvir)
```

```text
ID: DECISION-014
Date: 2026-09-12
Topic: Production hardening specialist agent roster (Wave 1)
Decision: Create Bid Ladder Harden fleet at L1 Draft: Staff Architect (custom), Repo Hardener, CI Sweeper, Evidence Packager, plus channel "Bid Ladder Harden". Reuse existing Eng / PR Reviewer / Bug Reproduction / Issue Drafter (do not duplicate). No routines on install. Publish remains held. Wave 2 (Docs Drift, Query Helper, Incident Desk, Changelog, Product Performance) deferred until Wave 1 earns trust. CEO remains orchestrator; founder approves merges/publish.
Rationale: Founder requested specialist agents for architecture, security, testing, and CI/CD before production publish. Mapped to grok-bot-templates + one custom Staff Architect. Approved in CEO chat 2026-09-12.
Status: DECIDED
Approver: Founder (Tanvir)
```

```text
ID: DECISION-015
Date: 2026-09-13
Topic: Agent Office as company operating framework
Decision: Adopt the Agent Office layout in tanviiiiir-r/bid-ladder: AGENTS.md, AGENT_OFFICE.md, adapters (Cursor, Grok Bot, Lovable), slack plan docs, and .planning/templates (agent-contract, job, decision). GitHub remains source of truth. This repo stays Company OS — no product app code, no Slack Bolt app.
Rationale: Phase 1 docs exist but agents lacked a shared office (contracts, jobs, adapters). Installing the framework as PROPOSED lets the founder approve structure without enacting Slack or economics.
Status: PROPOSED
Approver: Founder (pending)
```

```text
ID: DECISION-016
Date: 2026-09-13
Topic: Cursor as Company OS execution adapter
Decision: Commit Cursor project config in this repo: .cursor/rules (00-company, 10-decisions, 20-adapters, 30-lovable-briefs), .cursor/environment.json, .cursor/mcp.json (no secrets), custom agents ceo-orchestrator / repo-hardener / research-desk, .cursor/BUGBOT.md, and .cursorindexingignore. Cursor executes Company OS PRs; Lovable still builds product; Grok Bot fleets remain per DECISION-013 / 014. Founder merges; Bugbot reviews.
Rationale: Cloud Agents already work in this repo; versioning rules and agents in git makes the adapter inspectable and prevents product-code drift into Company OS.
Status: PROPOSED
Approver: Founder (pending)
```

```text
ID: DECISION-017
Date: 2026-09-13
Topic: Slack as founder operating surface; Slack app in a separate repo
Decision: If approved, Slack becomes the human operating surface (status, blockers, approvals) with GitHub still as memory. The Slack Bolt app MUST live in tanviiiiir-r/bid-ladder-slack (not this repo, not the product repo). Channel names Bid Ladder Launch / Bid Ladder Harden follow DECISION-013 / 014 but Slack channel creation is founder/workspace-admin. Enactment requires founder Slack login, admin channel creation, and secrets SLACK_BOT_TOKEN, SLACK_SIGNING_SECRET, SLACK_APP_TOKEN, GITHUB_TOKEN. Do not create bid-ladder-slack or install Slack until this row is DECIDED.
Rationale: Keeps Company OS free of app code; avoids agents fabricating workspace/app IDs; matches the existing Grok Bot channel names without claiming Slack channels exist.
Status: PROPOSED
Approver: Founder (pending)
```

## Proposed / Open Questions

| ID | Topic | Status | Owner |
|---|---|---|---|
| DECISION-001 | Initial launch market / ecosystem | DECIDED | Founder |
| DECISION-002 | Product repository name and location | DECIDED | Founder |
| DECISION-003 | Lovable account / project setup | DECIDED | Founder |
| DECISION-004 | Supabase project structure | OPEN | CEO / Founder |
| DECISION-005 | Listing eligibility criteria | OPEN | CEO |
| DECISION-006 | Ranking algorithm v0.1 | OPEN | CEO |
| DECISION-007 | Credit/bid/payment model | OPEN | Founder |
| DECISION-008 | Referral reward model | OPEN | Founder |
| DECISION-009 | Activity reward boundaries | OPEN | CEO / Founder |
| DECISION-010 | Geographic scope at launch | DECIDED | Founder |
| DECISION-011 | Categories and taxonomy at launch | OPEN | CEO |
| DECISION-012 | Admin access model | OPEN | Founder |
| DECISION-013 | Launch Grok Bot agent roster | DECIDED | Founder |
| DECISION-014 | Hardening specialist agent roster | DECIDED | Founder |
| DECISION-015 | Agent Office operating framework | PROPOSED | Founder |
| DECISION-016 | Cursor as Company OS execution adapter | PROPOSED | Founder |
| DECISION-017 | Slack operating surface; app repo bid-ladder-slack | PROPOSED | Founder |

## Principles

- Do not fabricate decisions.
- Every major strategic, financial, or destructive decision must be recorded here and approved by the founder.
- Economic values remain hypotheses until validated by experiments.
