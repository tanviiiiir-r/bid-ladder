# Bid Ladder — Strategic Roadmap

## Phase 1: AI Company Operating System (Current)

Goal: Establish the operating company before building the product.

- [x] Repository structure created.
- [x] Company documentation established.
- [x] CEO contract created.
- [ ] Validation process run and passed.
- [ ] Initial strategic context documented.
- [ ] Initial CEO report produced.
- [ ] Founder kickoff approved.

## Phase 2: CEO → Lovable → MVP Planning

Goal: Prepare a clear product build plan without building the application in this repository.

1. **Product design system brief** — Constraints, components, tone.
2. **Application architecture brief** — Stack (Supabase + Lovable-compatible frontend), data model, auth.
3. **Supabase environment plan** — Projects, branching, secrets, access.
4. **Core database schema** — Listings, categories, rankings, users, events (no final economics).
5. **Regional/category model** — Launch wedge and taxonomy.
6. **Leaderboard specification** — Ranking algorithm v0.1 (explicit assumptions).
7. **Listing flow specification** — Submission, verification, approval.
8. **Payment architecture plan** — Boundaries, risks, audit requirements (no pricing).
9. **Analytics/event architecture** — Event taxonomy, privacy, retention.
10. **Security model** — AuthZ, admin actions, webhooks, URL fetching.

## Phase 3: MVP Build (Lovable)

Goal: First working leaderboard and listing flow.

- Implement leaderboard (read-only v0).
- Implement listing submission and approval.
- Implement basic ranking/scoring.
- Implement analytics events.
- Implement share cards.
- Implement admin safeguards.

## Phase 4: Learn and Wedge

Goal: Validate the launch wedge and economic model through real usage.

- Launch to target ecosystem.
- Measure discovery → listing → competition → sharing funnel.
- Run pricing/credit experiments.
- Decide on specialist agents (Product, Growth, Engineering, etc.).

## Milestones

| Milestone | Definition of Done | Status |
|---|---|---|
| M1 — Company OS ready | CEO contract validated, docs committed | In progress |
| M2 — Build plan ready | Lovable briefs approved by founder | Not started |
| M3 — MVP live | Functional leaderboard + listing flow | Not started |
| M4 — Wedge validated | Repeat visits + first paid competition | Not started |

## Unresolved Decisions

See [`DECISIONS.md`](./DECISIONS.md).
