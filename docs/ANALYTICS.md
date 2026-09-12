# Bid Ladder — Analytics and Event Standards

## Principles

- Every meaningful action is an event.
- Events are privacy-respecting and minimal.
- Funnel metrics are first-class:
  - Discovery → Listing view
  - Listing view → Listing submission
  - Listing submission → Approval
  - Approval → Competition (bid/credit activity)
  - Competition → Share
  - Share → New user
- Retention and movement metrics drive product decisions.

## Event Taxonomy (Draft)

- `page_view`
- `category_view`
- `listing_view`
- `listing_submit`
- `listing_approve`
- `rank_change`
- `share`
- `credit_purchase` (unresolved economics)
- `bid_place` (unresolved economics)

## Open Decisions

- Analytics vendor (DECISION-004 / implementation).
- Privacy policy and retention.
