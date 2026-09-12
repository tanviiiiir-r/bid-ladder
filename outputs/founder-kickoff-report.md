# Bid Ladder — Founder Kickoff Report

Date: 2026-09-12
Status: Phase 1 — AI Company Operating System ready

---

## 1. Company Mission

Create a live competitive discovery platform where people immediately understand what is getting attention inside a specific ecosystem, and where companies or projects can earn or compete for higher visibility through legitimate activity.

## 2. Product Thesis

Bid Ladder is a regional discovery + competitive attention platform.

The core question for visitors: **“What's getting attention right now?”**

The core question for participants: **“Can I get mine higher?”**

The leaderboard is the product. Activities, credits, referrals, and nominations exist only to strengthen the main loop.

## 3. Recommended Initial Market Wedge

**HYPOTHESIS:** Launch with a specific internet-native ecosystem, potentially AI/SaaS/startups, rather than a generic worldwide directory.

This remains an open decision (DECISION-001) pending market research.

## 4. Product Architecture (Outline)

- **Frontend:** Lovable-generated React application.
- **Backend/Database:** Supabase (PostgreSQL + Auth + Edge Functions + Realtime).
- **Payments:** Stripe or equivalent via Supabase Edge Functions.
- **Analytics:** Supabase + PostHog or equivalent.

Core entities: `listings`, `categories`, `rankings`, `users`, `events`, and a future `credits/bids` mechanism.

## 5. AI Company Structure

```text
Founder
   ↓
Bid Ladder CEO
   ↓
Lovable / Product Builder
```

Specialist agents (Product, Engineering, Growth, Research, Analytics, Operations) are planned for Phase 2 but not activated yet.

## 6. CEO Responsibilities

- Read and maintain company documentation.
- Inspect GitHub and product state.
- Research, plan, and recommend.
- Create Lovable implementation briefs.
- Identify risks and unresolved decisions.
- Document decisions and produce status reports.
- Escalate strategic, financial, and destructive decisions to the founder.

## 7. Lovable Responsibilities

- Receive clear briefs (objectives, context, requirements, constraints, acceptance criteria, security, testing).
- Implement product features in the separate product repository.
- Do not redefine the business independently.

## 8. Initial Roadmap

| Phase | Goal | Status |
|---|---|---|
| Phase 1 | AI Company OS ready | ✅ Done |
| Phase 2 | CEO → Lovable → MVP planning | Next |
| Phase 3 | MVP build in product repository | Not started |
| Phase 4 | Launch wedge validation | Not started |

Milestone M1 (Company OS ready) is complete once this report is accepted.

## 9. Critical Risks

1. **Launch wedge uncertainty** — The right ecosystem is not yet validated.
2. **Economic model uncertainty** — Prices, bids, credits, rewards are unresolved.
3. **Lovable scope creep** — Builder may add features that weaken the core loop.
4. **Fake signal temptation** — Ranking requires real, auditable signals.
5. **Security** — Payments, admin actions, and user data are high-risk from day one.

## 10. Unknowns

- Exact launch ecosystem and category taxonomy.
- Listing eligibility criteria.
- Ranking algorithm v0.1.
- Credit/bid/payment model.
- Geographic scope.
- Admin access model.

## 11. Economic Hypotheses

All economic values are intentionally unresolved. They will be discovered through experiments and require founder approval before implementation.

See `docs/ECONOMICS-POC.md`.

## 12. Launch Strategy

1. Validate launch wedge through research.
2. Build MVP leaderboard + listing flow.
3. Onboard first ecosystem participants.
4. Measure discovery → listing → competition → sharing funnel.
5. Run economic experiments under guardrails.

## 13. Required Integrations

- GitHub product repository.
- Lovable project.
- Supabase project.
- Stripe (or equivalent) — only after financial model is approved.
- Analytics event pipeline.

## 14. First 10 Implementation Tasks

1. Repository/documentation foundation ✅
2. Product design system brief
3. Application architecture brief
4. Supabase environment plan
5. Core database schema
6. Regional/category model
7. Leaderboard specification
8. Listing flow
9. Payment architecture (plan only)
10. Analytics/event architecture

## 15. Founder Decisions Required

1. **DECISION-001:** Approve or change the launch ecosystem hypothesis.
2. **DECISION-002:** Name and create the product repository.
3. **DECISION-003:** Set up Lovable account/project.
4. **DECISION-004:** Approve Supabase project structure.
5. **DECISION-005:** Approve listing eligibility criteria.
6. **DECISION-006:** Approve ranking algorithm v0.1 assumptions.
7. **DECISION-007:** Approve financial/credit model direction.
8. **DECISION-008:** Approve referral reward model.
9. **DECISION-009:** Approve activity reward boundaries.
10. **DECISION-010:** Approve geographic scope.
11. **DECISION-011:** Approve initial category taxonomy.
12. **DECISION-012:** Approve admin access model.

## 16. Recommended Next Action

**Create the Bid Ladder product repository and set up the Lovable project**, then hand control to the CEO to produce the first implementation briefs (design system, architecture, Supabase plan, schema).

---

All details live in the repository:
- `COMPANY.md` — identity and principles
- `CEO.md` — CEO contract
- `ROADMAP.md` — roadmap
- `DECISIONS.md` — decision log
- `docs/` — product, architecture, design, economics, growth, analytics, operations, security, research, experiments
