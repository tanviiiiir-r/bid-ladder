# Job template

Use for work handed to an adapter. Prefer a GitHub issue in this repo plus a filled copy under `.planning/` when the job is long-lived.

```text
ID: JOB-YYYYMMDD-<slug>
Date: YYYY-MM-DD
Status: OPEN / IN PROGRESS / BLOCKED / DONE / CANCELLED
Requester:
Owner agent:
Adapter: Cursor / Grok Bot / Lovable
Related decisions:
Related PRs / issues:
```

## Outcome

One sentence. What is true when this job is done.

## Context

Facts the agent must inspect (paths, repos, prior jobs). Do not paste secrets.

## Scope

### In

-

### Out

- Product code in `bid-ladder`
- Slack app enactment
- Economic values

## Constraints

- Inspect GitHub before acting.
- Feature branch + PR; founder merges.
- Classify claims.

## Acceptance criteria

-

## Security / data

-

## Handoff

When done, who reviews (founder / Bugbot / CEO) and where the artifact lives.
