# Bid Ladder — Security Culture

## High-Risk Areas

- Payments, credits, refunds.
- Authentication and authorization.
- URL fetching (SSRF, malware, phishing).
- Admin actions.
- Referrals and rewards.
- User data.
- Webhooks.

## Requirements

- Admin actions logged and reviewed.
- Financial operations idempotent, auditable, transactionally consistent.
- URL fetching sandboxed and validated.
- AuthZ enforced at every sensitive endpoint.
- Rate limits on public APIs.
- No uncontrolled autonomous agents with destructive access.

## CEO Responsibility

The CEO must explicitly identify security implications in every implementation task and Lovable brief.
