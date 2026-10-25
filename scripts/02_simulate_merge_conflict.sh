#!/usr/bin/env bash
# ==============================================================================
# 02_simulate_merge_conflict.sh - Hands-On Conflict Practice Drill
# ==============================================================================
set -euo pipefail

TMP_PRACTICE="/tmp/git_conflict_practice_$$"
echo "Creating practice sandbox in $TMP_PRACTICE..."
mkdir -p "$TMP_PRACTICE"
cd "$TMP_PRACTICE"

git init -b main
echo "Initial config: port=8000" > server.conf
git add server.conf
git commit -m "chore: initial server configuration"

# Create branch A
git checkout -b feature-alpha
echo "Alpha config: port=9000" > server.conf
git commit -am "feat: change port to 9000 on alpha"

# Create branch B from main
git checkout main
git checkout -b feature-beta
echo "Beta config: port=9999" > server.conf
git commit -am "feat: change port to 9999 on beta"

# Trigger merge conflict
echo -e "\nTriggering merge conflict between feature-alpha and feature-beta..."
git merge feature-alpha || true

echo -e "\n--> MERGE CONFLICT GENERATED IN: $TMP_PRACTICE/server.conf"
echo "Run: cd $TMP_PRACTICE && git status"
