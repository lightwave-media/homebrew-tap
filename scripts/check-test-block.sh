#!/usr/bin/env bash
# Verify every Formula/*.rb passed in has a `test do` block.
# Homebrew best practice: a tap publishes broken formulae most often when
# the test block is missing or empty. This catches the missing-block case
# at commit time so it never reaches users.
set -euo pipefail

failed=0
for f in "$@"; do
  if ! grep -qE '^[[:space:]]*test[[:space:]]+do[[:space:]]*$' "$f"; then
    echo "::error file=$f::Missing 'test do' block. Every formula must include a test."
    failed=1
  fi
done
exit "$failed"
