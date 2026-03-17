#!/bin/bash
cd ~/Documents/Claude\ Workspace/inbox-triage-dashboard

# Exit if no changes
if git diff --quiet index.html 2>/dev/null; then
  exit 0
fi

git add index.html
git commit -m "Triage update: $(date +%Y-%m-%d)"
git push origin main
