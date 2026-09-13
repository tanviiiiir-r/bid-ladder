# Slack setup checklist (do not enact from Company OS)

Status: **plan only**. Complete this list only after DECISION-017 is **DECIDED** and the founder has authorized creating `bid-ladder-slack`.

Legend:

- **[FOUNDER]** — interactive; agents cannot complete this in a background VM.
- **[AFTER REPO]** — belongs in `bid-ladder-slack`, not here.
- **[COMPANY OS]** — already possible in this repo (docs / decisions only).

## 0. Governance

- [ ] **[COMPANY OS]** Founder marks DECISION-017 `DECIDED` in `DECISIONS.md`.
- [ ] **[FOUNDER]** Founder explicitly authorizes creating GitHub repo `tanviiiiir-r/bid-ladder-slack`.
- [ ] **[FOUNDER]** Founder names the Slack workspace (ID unknown to this repo).

## 1. GitHub repo for the Slack app

- [ ] **[FOUNDER / AFTER REPO]** Create `tanviiiiir-r/bid-ladder-slack` (empty app repo). Do **not** create it as a side effect of Company OS work.
- [ ] **[AFTER REPO]** Add Bolt app scaffold, README, and secret-free manifest templates.
- [ ] **[AFTER REPO]** Point the app's GitHub integration at Company OS + product repos with least privilege.

## 2. Slack login and app

- [ ] **[FOUNDER]** `slack login` (or browser login at api.slack.com) to the chosen workspace.
- [ ] **[FOUNDER]** Create the Slack app (Slack CLI or api.slack.com). Record app ID in `bid-ladder-slack` docs — not in chat.
- [ ] **[FOUNDER]** Enable Socket Mode **or** a verified HTTP Request URL (founder chooses; do not assume).
- [ ] **[FOUNDER]** Install the app to the workspace.

## 3. Workspace-admin channels

- [ ] **[FOUNDER]** Create channel matching DECISION-013 name **Bid Ladder Launch** (or founder-chosen Slack name).
- [ ] **[FOUNDER]** Create channel matching DECISION-014 name **Bid Ladder Harden**.
- [ ] **[FOUNDER]** Invite the bot user to those channels.
- [ ] **[FOUNDER]** Create any additional private founder/approvals channel if desired.

## 4. Secrets (never commit)

Issue in Slack app config / GitHub; store in the host secret manager:

- [ ] **[FOUNDER]** `SLACK_BOT_TOKEN`
- [ ] **[FOUNDER]** `SLACK_SIGNING_SECRET`
- [ ] **[FOUNDER]** `SLACK_APP_TOKEN`
- [ ] **[FOUNDER]** `GITHUB_TOKEN` (Slack app → GitHub, least privilege)

## 5. Wire-up (after repo + secrets)

- [ ] **[AFTER REPO]** Deploy or `slack run` against a non-production workspace first.
- [ ] **[AFTER REPO]** Post a test message to Launch; confirm signing secret rejects tampers.
- [ ] **[COMPANY OS]** Document the live channel IDs in this repo **only after they exist** (FACT, sourced).
- [ ] **[FOUNDER]** Confirm GitHub remains source of truth; Slack does not auto-merge or auto-publish.

## Explicitly out of scope for this Company OS PR

- Creating `bid-ladder-slack`
- Slack CLI login
- Channel creation
- Secret values
- Installing a Slack app
