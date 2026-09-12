# Bid Ladder — Economic Model (Proof of Concept / Hypotheses)

## Status

**ALL ECONOMIC VALUES ARE UNRESOLVED HYPOTHESES.**

Do not implement permanent prices, bids, credits, rewards, or expiry rules without explicit founder approval and experimental validation.

## Unresolved Questions

- Listing prices (if any).
- Bid amounts / credit values.
- Referral rewards.
- Activity rewards.
- Credit expiry rules.
- Subsidy levels.
- Refund policy.

## Experimental Approach

Each economic variable must go through:

1. Hypothesis documented.
2. Experiment designed with guardrails.
3. Data collected.
4. Decision recorded in DECISIONS.md.
5. Only then implemented in production.

## Security Boundaries

- All payment/credit changes must be idempotent, auditable, refund-safe, and transactionally consistent.
- Admin actions on credits are high-risk.
- Founder approval required for any production financial change.
