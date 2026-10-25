# Git Disaster Recovery Playbook & Time Travel

Standard Operating Procedures for recovering lost work, un-breaking repositories, and fixing accidental commits.

---

## 1. Recovering Accidentally Deleted Commits / Branches
### Scenario
You ran `git branch -D feature-branch` or hard reset past several commits.

### Recovery Workflow
1. View the local reference log:
   ```bash
   git reflog --date=relative
   ```
2. Locate the commit hash before the destructive operation (e.g., `HEAD@{2}`).
3. Restore the branch at that exact commit:
   ```bash
   git branch recovered-feature HEAD@{2}
   git switch recovered-feature
   ```

---

## 2. Undoing a Commit Without Losing Local Changes
### Scenario
You committed code too early or with wrong files.
```bash
# Keep changes in working tree and staging area:
git reset --soft HEAD~1

# Keep changes in working tree, unstage them:
git reset --mixed HEAD~1

# Discard changes completely (DANGER):
git reset --hard HEAD~1
```

---

## 3. Undoing a Public (Pushed) Commit Safely
### Scenario
You pushed a commit to `main` that introduced a bug. You must NOT rewrite history (`git reset` + force push is forbidden on shared branches).
```bash
# Creates a new commit that exactly inverts the changes:
git revert <commit-sha>
git push origin main
```

---

## 4. Resolving Merge Conflicts Cleanly
1. Identify conflicting files:
   ```bash
   git status
   ```
2. Open conflicting file and inspect markers:
   ```
   <<<<<<< HEAD (Current branch)
   const API_URL = "https://api.teachcloud.io/v1";
   =======
   const API_URL = "https://api.teachcloud.io/v2";
   >>>>>>> feature/v2-upgrade (Incoming branch)
   ```
3. Choose the correct state, remove markers, and stage:
   ```bash
   git add <resolved_file>
   git commit -m "merge: resolve API_URL conflict between main and feature/v2-upgrade"
   ```

---

## 5. Hunting Bugs with Automated Binary Search (`git bisect`)
```bash
# Start bisect session
git bisect start

# Mark current broken state
git bisect bad

# Mark a known working commit
git bisect good v1.0.0

# Automate testing with a test script:
git bisect run pytest tests/test_critical.py
# Git tests each midpoint and pinpoints the exact offending commit!
git bisect reset
```
