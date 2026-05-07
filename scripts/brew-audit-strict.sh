#!/usr/bin/env bash
# Run brew audit --strict --new-formula against each passed formula.
# Pre-push tier: catches structural issues that brew style misses.
set -euo pipefail

failed=0
for f in "$@"; do
  echo "Auditing (strict): $f"
  brew audit --strict --new-formula "$f" || failed=1
done
exit "$failed"
