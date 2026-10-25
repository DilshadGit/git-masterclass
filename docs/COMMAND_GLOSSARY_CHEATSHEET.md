# 📖 Git Command Glossary & Plain-English Reference (Master Reference)

A beginner-friendly and comprehensive reference explaining standard Git commands, what their parameters stand for, what they actually do under the hood, and real-world production DevOps usage.

---

## 🗺️ Master Command Reference Table

| Command | Category | Plain-English Job (What it does) | Everyday Production Example |
| :--- | :--- | :--- | :--- |
| **`git init`** | Setup | Initializes a new, empty Git repository (`.git/` directory) in the current directory. | `git init my-app` |
| **`git clone`** | Setup | Clones an entire remote repository including all history, branches, and tags. | `git clone git@github.com:teachcloud/cloud_flask.git` |
| **`git config`** | Setup | Reads and writes repository and global user settings (`user.name`, `core.autocrlf`). | `git config --global user.name "Alex Morgan"` |
| **`git status`** | Plumbing | Audits working tree status, showing staged, unstaged, and untracked files. | `git status -s` |
| **`git add`** | Plumbing | Stages file modifications into the Index preparation area for the next commit. | `git add -p` |
| **`git commit`** | Plumbing | Records staged Index changes as a permanent snapshot commit in the DAG. | `git commit -m "feat(auth): add pkce"` |
| **`git diff`** | Plumbing | Displays unified diff line comparisons between Working Tree, Index, and HEAD. | `git diff --staged` |
| **`git log`** | History | Renders commit history logs with author metadata, timestamps, and graph lines. | `git log --graph --oneline --decorate --all` |
| **`git show`** | History | Inspects metadata and patch diff of a specific commit SHA or tag. | `git show HEAD` |
| **`git blame`** | History | Annotates each line of a file with the commit author, date, and commit SHA. | `git blame app.py` |
| **`git branch`** | Branching | Lists, creates, renames, or deletes 41-byte branch pointers. | `git branch -vv` |
| **`git switch`** | Branching | Switches current working directory HEAD to a target branch or creates a new one (`-c`). | `git switch -c feature-oauth` |
| **`git merge`** | Branching | Joins two development histories together using fast-forward or 3-way merge commits. | `git merge --no-ff feature-auth` |
| **`git remote`** | Collaboration | Manages named URL endpoints pointing to central upstream repositories (`origin`). | `git remote -v` |
| **`git fetch`** | Collaboration | Downloads remote commits and updates `origin/*` refs without modifying local working files. | `git fetch --prune origin` |
| **`git pull`** | Collaboration | Downloads remote commits (`fetch`) and integrates them into active branch (`rebase` or `merge`). | `git pull --rebase origin main` |
| **`git push`** | Collaboration | Publishes local branch commits to the remote server and sets tracking (`-u`). | `git push --force-with-lease origin main` |
| **`git restore`** | Time Travel | Discards uncommitted edits in working files or unstages files from the Index. | `git restore --staged main.py` |
| **`git reset`** | Time Travel | Rewinds HEAD along DAG with `--soft` (staged), `--mixed` (unstaged), or `--hard` (wiped). | `git reset --soft HEAD~1` |
| **`git revert`** | Time Travel | Creates a new inverse commit that safely cancels a previous commit on public branches. | `git revert HEAD` |
| **`git stash`** | Time Travel | Shelves uncommitted work onto a local LIFO stack for clean context switching. | `git stash pop` |
| **`git rebase`** | Time Travel | Re-applies commits sequentially on top of a new base tip, or sculpts PRs interactively (`-i`). | `git rebase -i HEAD~4` |
| **`git reflog`** | Time Travel | Local chronologically ordered journal of all HEAD pointer movements for disaster recovery. | `git switch -c recovered HEAD@{3}` |
| **`git cherry-pick`** | DevOps | Surgically copies a single commit diff patch onto the current branch without merging all features. | `git cherry-pick -x 8f1e29c` |
| **`git bisect`** | DevOps | Uses binary search ($O(\log N)$) to automatically pinpoint the commit that broke production. | `git bisect run pytest tests/` |
| **`git lfs`** | DevOps | Git Large File Storage: tracks binary models/media using lightweight 130-byte pointers. | `git lfs track "*.onnx"` |
| **`git submodule`** | DevOps | Embeds external Git repositories into subdirectories locked to specific commit SHAs. | `git submodule update --init --recursive` |
| **`git clean`** | DevOps | Cleans untracked build artifacts and scratch files from the working directory. | `git clean -fd` |
| **`git gc`** | DevOps | Compresses loose object files into packfiles and prunes unreachable dangling commits. | `git gc --prune=now --aggressive` |
| **`git filter-repo`** | Security | Emergency disaster response: permanently purges leaked passwords/.env from all history. | `git filter-repo --path .env --invert-paths` |
