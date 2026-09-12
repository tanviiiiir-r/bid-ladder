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
run_check "COMPANY.md exists" 5 "test -f COMPANY.md"
run_check "CEO.md exists" 10 "test -f CEO.md"
run_check "agents/CEO.md exists" 5 "test -f agents/CEO.md"
run_check "ROADMAP.md exists" 5 "test -f ROADMAP.md"
run_check "DECISIONS.md exists" 5 "test -f DECISIONS.md"

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
