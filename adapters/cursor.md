# Adapter — Cursor

Status: **PROPOSED** as the primary Company OS execution adapter (DECISION-016). Cursor is already in use for this repository; this file records how it should operate if the founder approves the office.

## Job

Execute Company OS work in `tanviiiiir-r/bid-ladder`: inspect GitHub, draft docs and contracts, open PRs, and keep product code out of this repo.

## Surfaces

| Surface | Path / location | Notes |
|---|---|---|
| Standing instructions | `AGENTS.md` | Plain markdown; read by Cursor and other agents |
| Project rules | `.cursor/rules/*.mdc` | `00-company`, `10-decisions`, `20-adapters`, `30-lovable-briefs` |
| Custom agents | `.cursor/agents/` | `ceo-orchestrator`, `repo-hardener`, `research-desk` |
| Cloud environment | `.cursor/environment.json` | Docs-only install; product repo as a dependency |
| MCP | `.cursor/mcp.json` | No secrets. GitHub / Lovable auth stays in Cursor dashboard or env |
| Bugbot | `.cursor/BUGBOT.md` | PR review only; does not read `.cursor/rules/` |
| Indexing | `.cursorindexingignore` | Skip noise |

## MAY

- Read this repo and inspect `tanviiiiir-r/rising-star-board`.
- Create feature branches and pull requests.
- Propose DECISION-XXX entries as **PROPOSED**.
- Produce Lovable briefs (see `adapters/lovable.md` and `.cursor/rules/30-lovable-briefs.mdc`).
- Ask Bugbot to review PRs.

## MUST NOT

- Commit product application code here.
- Force-push or rewrite published history.
- Merge to `main` (founder merges).
- Store tokens, signing secrets, or `.env` files.
- Mark a decision DECIDED without founder approval.
- Create `tanviiiiir-r/bid-ladder-slack` or install a Slack app.
- Invent scanner results, prices, or marketplace activity.

## MCP (no secrets in git)

**ASSUMPTION:** Cloud Agents already receive GitHub MCP from Cursor. The founder also uses the Lovable Cursor plugin for the product project.

`.cursor/mcp.json` exists so the project has a committed MCP file. It does not embed tokens. Connect GitHub and Lovable from Cursor Customize / Cloud Agent environment. Required interactive auth is a founder action, not an agent action.

## Environment

`.cursor/environment.json` names this Company OS environment and lists `github.com/tanviiiiir-r/rising-star-board` as a repository dependency so agents can inspect the product without copying it here.

**FACT:** The current cloud environment already clones both repos (dashboard personal environment). Committing `environment.json` makes that policy versioned in git (PROPOSED DECISION-016).

## Custom agents vs Grok Bot

Cursor agents `repo-hardener` and `research-desk` are Company OS counterparts of the Grok Bot catalog jobs (DECISION-013 / DECISION-014). They do not replace the Grok Bot fleets. Same job, different adapter. No routines on install.

## Handoffs

- Product implementation → Lovable adapter (`adapters/lovable.md`).
- Named Grok Bot fleet work → `adapters/grok-bot.md`.
- Slack surface → plan only, `slack/OPERATING_SURFACE.md`.
