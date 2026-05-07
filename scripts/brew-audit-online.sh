#!/usr/bin/env bash
# Run brew audit --online against each passed formula.
# Pre-push tier: validates that release URLs (e.g. GoReleaser tarballs)
# actually resolve. Catches dead-link formulae before users hit them.
#
# Requires network. If offline, the audit will fail and block the push —
# which is the correct behavior; we don't want unverified formulae shipping.
set -euo pipefail

failed=0
for f in "$@"; do
  echo "Auditing (online): $f"
  brew audit --online "$f" || failed=1
done
exit "$failed"
