# Bugbot — Bid Ladder Company OS

This repository is Company OS / Agent Office, not the product application.

When reviewing PRs here, treat these as defects unless the PR is explicitly a documentation-only mention of them:

1. **Product app code** landed in this repo (UI, app routes, product schema migrations). Product belongs in `tanviiiiir-r/rising-star-board`.
2. **Slack Bolt / app code** landed here. Slack app belongs in `bid-ladder-slack` after DECISION-017.
3. **Secrets** (`xoxb-`, `xapp-`, signing secrets, GitHub PATs, `.env`).
4. **DECIDED** used for DECISION-015 / 016 / 017, or any new decision marked DECIDED without founder approval language.
5. **Fabricated** prices, bids, credits, rewards, users, rankings, or citations.
6. **History rewrite** instructions (force-push, rebase of published `main`).
7. **Autonomy creep** — enabling Grok Bot routines, uncontrolled agents, or auto-merge.

Governance references (same repo, markdown): [AGENTS.md](../AGENTS.md), [AGENT_OFFICE.md](../AGENT_OFFICE.md), [DECISIONS.md](../DECISIONS.md), [CEO.md](../CEO.md).

Do not demand product tests, CI app builds, or mobile screenshots in this repo. Do demand that claims about GitHub repos, Lovable project ids, and decision statuses match `DECISIONS.md`.
