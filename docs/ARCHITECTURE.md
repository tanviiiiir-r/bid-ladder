# Bid Ladder — Product Architecture (Outline)

## Status

**ASSUMPTION.** This is a working outline. Final architecture depends on DECISION-002 (product repository), DECISION-003 (Lovable setup), and DECISION-004 (Supabase structure).

## Hypothesized Stack

- **Frontend:** Lovable-generated React application.
- **Backend/Database:** Supabase (PostgreSQL + Auth + Edge Functions).
- **Realtime:** Supabase realtime for leaderboard updates.
- **Payments:** Stripe or equivalent, connected via Supabase Edge Functions.
- **Analytics:** Supabase + PostHog or equivalent event pipeline.
- **Hosting:** Vercel/Netlify or Lovable-provided hosting.

## Core Entities (Draft)

- `listings` — submitted projects/companies/creators.
- `categories` — launch taxonomy.
- `rankings` — computed leaderboard positions.
- `users` — visitors and listing owners.
- `events` — analytics events.
- `credits` or `bids` — economic mechanism (unresolved, see ECONOMICS-POC.md).

## Boundaries

- No cryptocurrency.
- No fabricated signals.
- All ranking inputs must be auditable.
- Admin actions must be logged.

## Open Decisions

- DECISION-004: Supabase project structure.
- DECISION-006: Ranking algorithm v0.1.
- DECISION-007: Credit/bid/payment model.
