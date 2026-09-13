# Adapter — Lovable

Lovable is the product builder. It does not live in this repository.

## Recorded decisions (FACT)

| ID | Status | What was approved |
|---|---|---|
| DECISION-002 | DECIDED | Canonical product GitHub repo is `tanviiiiir-r/rising-star-board` (public, Lovable two-way sync). Company OS remains `tanviiiiir-r/bid-ladder`. Product code must not live here. |
| DECISION-003 | DECIDED | Lovable project **Bid Ladder**, id `6e05f72b-e75f-4175-a163-ef7e3b9791d9`, workspace "tanvir's Lovable". Editor: https://lovable.dev/projects/6e05f72b-e75f-4175-a163-ef7e3b9791d9 |

## Job

Receive implementation briefs from the CEO / Company OS and change the product in the Lovable sandbox. Preview rebuilds after each agent reply. Git commits on the connected product branch sync back to Lovable.

## Brief contract

Every brief sent to Lovable MUST include:

1. Objectives
2. Context (decisions, constraints, current product state)
3. Requirements
4. Constraints (especially: no fabricated rankings/activity; no permanent economics)
5. Acceptance criteria
6. Security requirements
7. Testing / verification requirements

Do not ask Lovable to redefine the business. Standing product knowledge belongs in the Lovable project knowledge, not as a pile of contradictory chat.

## How Cursor talks to Lovable

When the Lovable MCP / plugin is connected:

- Locate the project (`get_project` / `list_projects`). Keep `editor_url` and `preview_url`.
- Prefer `plan_mode=true` for open-ended or risky work.
- One focused `send_message` per change. Name the screen and element.
- Verify with `get_diff` (and `read_file` when needed). A reply that claims a change is not evidence.
- Do not force-push or rebase published Lovable-sync history on `rising-star-board`.

If the Lovable MCP is **not** connected, stop and ask the founder to authenticate it. Do not invent preview URLs or diffs.

## MAY

- Draft briefs in this Company OS repo.
- Inspect `rising-star-board` to ground the brief in current code.
- Review Lovable output before recommending founder acceptance.

## MUST NOT

- Copy product application code into `bid-ladder`.
- Set prices, bids, credits, or rewards in the product.
- Fabricate users, rankings, or social proof.
- Publish production without founder approval (DECISION-014: publish remains held).
- Create a second Lovable project or a second product repo without a new DECISION.

## Handoffs

- Company memory / decisions → this repo.
- Implementation → Lovable + `rising-star-board`.
- Architecture / hygiene review → Repo Hardener / Staff Architect (Grok Bot or Cursor), L1 drafts only.
