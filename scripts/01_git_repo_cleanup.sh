#!/usr/bin/env bash
# ==============================================================================
# 01_git_repo_cleanup.sh - Repository Maintenance & Garbage Collection
# ==============================================================================
set -euo pipefail

echo "Optimizing Git repository storage..."
git fetch -p origin || true

echo "Pruning merged local branches (excluding main/master)..."
git branch --merged | grep -E -v "(^\*|master|main|dev)" | xargs -r git branch -d || true

echo "Running Git Garbage Collection..."
git gc --prune=now --aggressive

echo "Repository optimization complete. Disk size of .git:"
du -sh .git
