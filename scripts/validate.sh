#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

FAIL=0
REPORT_FILE=".planning/validation/validation-report.md"
SCORE=0
MAX=0

mkdir -p .planning/validation

run_check() {
  local name="$1"
  local weight="$2"
  local condition="$3"
  MAX=$((MAX + weight))
  if eval "$condition"; then
    echo "[PASS] $name (+$weight)"
    SCORE=$((SCORE + weight))
  else
    echo "[FAIL] $name (+0)"
    FAIL=1
  fi
}

echo "# Bid Ladder Bot Ready Validation" > "$REPORT_FILE"
echo "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "## Checking repository structure..."
run_check "README.md exists" 5 "test -f README.md"
run_check "AGENTS.md exists" 5 "test -f AGENTS.md"
run_check "AGENT_OFFICE.md exists" 5 "test -f AGENT_OFFICE.md"
run_check "COMPANY.md exists" 5 "test -f COMPANY.md"
run_check "CEO.md exists" 10 "test -f CEO.md"
run_check "agents/CEO.md exists" 5 "test -f agents/CEO.md"
run_check "ROADMAP.md exists" 5 "test -f ROADMAP.md"
run_check "DECISIONS.md exists" 5 "test -f DECISIONS.md"

echo ""
echo "## Checking Agent Office..."
run_check "adapters/cursor.md exists" 2 "test -f adapters/cursor.md"
run_check "adapters/grok-bot.md exists" 2 "test -f adapters/grok-bot.md"
run_check "adapters/lovable.md exists" 2 "test -f adapters/lovable.md"
run_check "slack/OPERATING_SURFACE.md exists" 2 "test -f slack/OPERATING_SURFACE.md"
run_check "slack/SETUP_CHECKLIST.md exists" 2 "test -f slack/SETUP_CHECKLIST.md"
run_check "template agent-contract exists" 2 "test -f .planning/templates/agent-contract.md"
run_check "template job exists" 2 "test -f .planning/templates/job.md"
run_check "template decision exists" 2 "test -f .planning/templates/decision.md"

echo ""
echo "## Checking Cursor config..."
run_check ".cursor/rules/00-company.mdc exists" 2 "test -f .cursor/rules/00-company.mdc"
run_check ".cursor/rules/10-decisions.mdc exists" 2 "test -f .cursor/rules/10-decisions.mdc"
run_check ".cursor/rules/20-adapters.mdc exists" 2 "test -f .cursor/rules/20-adapters.mdc"
run_check ".cursor/rules/30-lovable-briefs.mdc exists" 2 "test -f .cursor/rules/30-lovable-briefs.mdc"
run_check ".cursor/environment.json exists" 2 "test -f .cursor/environment.json"
run_check ".cursor/mcp.json exists" 2 "test -f .cursor/mcp.json"
run_check "agent ceo-orchestrator exists" 2 "test -f .cursor/agents/ceo-orchestrator.md"
run_check "agent repo-hardener exists" 2 "test -f .cursor/agents/repo-hardener.md"
run_check "agent research-desk exists" 2 "test -f .cursor/agents/research-desk.md"
run_check ".cursor/BUGBOT.md exists" 2 "test -f .cursor/BUGBOT.md"
run_check ".cursorindexingignore exists" 2 "test -f .cursorindexingignore"

echo ""
echo "## Checking docs/ directory..."
for doc in PRODUCT.md ARCHITECTURE.md DESIGN_SYSTEM.md ECONOMICS-POC.md GROWTH.md ANALYTICS.md OPERATIONS.md SECURITY.md RESEARCH.md EXPERIMENTS.md; do
  run_check "docs/$doc exists" 2 "test -f docs/$doc"
done

echo ""
echo "## Checking CEO contract completeness..."
run_check "CEO contract has mission" 5 "grep -q 'Mission' CEO.md"
run_check "CEO contract has authority boundaries" 5 "grep -q 'MAY' CEO.md && grep -q 'MUST NOT' CEO.md"
run_check "CEO contract has autonomy level" 5 "grep -q 'Controlled' CEO.md"
run_check "CEO contract has Lovable relationship" 5 "grep -q 'Lovable' CEO.md"
run_check "CEO contract has GitHub operating model" 5 "grep -q 'GitHub' CEO.md"
run_check "CEO contract has founder relationship" 5 "grep -q 'Founder' CEO.md"
run_check "CEO contract has output format" 5 "grep -q 'OBSERVATION' CEO.md"

echo ""
echo "## Checking content safety..."
run_check "No fake activity promises" 5 "! grep -Riq 'fabricate\|fake users\|fake bids\|manufactured' . --include='*.md' || true"
run_check "Economic values marked unresolved" 5 "grep -Riq 'unresolved\|hypothesis\|experiment' docs/ECONOMICS-POC.md"
run_check "DECISION-015 remains PROPOSED" 5 "awk '/^ID: DECISION-015$/{p=1} p&&/^Status:/{print; exit}' DECISIONS.md | grep -q PROPOSED"
run_check "DECISION-016 remains PROPOSED" 5 "awk '/^ID: DECISION-016$/{p=1} p&&/^Status:/{print; exit}' DECISIONS.md | grep -q PROPOSED"
run_check "DECISION-017 remains PROPOSED" 5 "awk '/^ID: DECISION-017$/{p=1} p&&/^Status:/{print; exit}' DECISIONS.md | grep -q PROPOSED"
run_check "environment.json is valid JSON" 2 "python3 -m json.tool .cursor/environment.json >/dev/null"
run_check "mcp.json is valid JSON" 2 "python3 -m json.tool .cursor/mcp.json >/dev/null"

echo ""
echo "## Score"
echo ""
echo "Score: $SCORE / $MAX"
echo ""

echo "" >> "$REPORT_FILE"
echo "## Results" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
echo "- **Score:** $SCORE / $MAX" >> "$REPORT_FILE"
if [ "$FAIL" -eq 0 ]; then
  echo "- **Status:** BOT READY" >> "$REPORT_FILE"
  echo ""
  echo "✅ BOT READY ($SCORE/$MAX)"
else
  echo "- **Status:** NEEDS WORK" >> "$REPORT_FILE"
  echo ""
  echo "❌ NEEDS WORK ($SCORE/$MAX)"
fi

echo "" >> "$REPORT_FILE"
echo "Threshold for Bot Ready: >= 80% or all critical checks passing." >> "$REPORT_FILE"

exit $FAIL
