# Git Architecture & Industrial Version Control - Masterclass Examination (24 Questions)

> **Instructions**: Test your comprehensive knowledge across all 6 core levels and industrial practices. Each question contains four choices with exactly one correct answer. An in-depth Answer Key with technical explanations is provided at the bottom.

## Questions

### Question 1
**Which command initializes a brand-new Git version control repository inside the current working directory?**

- **A)** git clone
- **B)** git init
- **C)** git new
- **D)** git create

### Question 2
**What is the operational distinction between 'git pull' and 'git fetch'?**

- **A)** git pull only downloads metadata; git fetch downloads actual commit payloads
- **B)** git fetch downloads remote objects without merging; git pull fetches and merges into HEAD
- **C)** git fetch removes stale remote branches; git pull creates local tracking branches
- **D)** Both commands execute identical actions under different command aliases

### Question 3
**Which command temporarily shelves uncommitted local modifications without creating a formal commit?**

- **A)** git clean -f
- **B)** git stash
- **C)** git checkout --
- **D)** git reset --soft

### Question 4
**What does the command 'git checkout -b feature/auth' execute in a Git repository?**

- **A)** Deletes the local branch feature/auth
- **B)** Creates and immediately checks out a new branch named feature/auth
- **C)** Renames the currently active branch to feature/auth
- **D)** Downloads the feature/auth branch from origin without checking it out

### Question 5
**Which command applies the exact changes from an individual existing commit onto your current working branch?**

- **A)** git merge --squash
- **B)** git rebase -i
- **C)** git cherry-pick <commit-hash>
- **D)** git revert --no-commit

### Question 6
**What does executing 'git reset --soft HEAD~1' do to your repository state?**

- **A)** Deletes the last commit and discards all file modifications permanently
- **B)** Rewinds HEAD by one commit while leaving all changed files staged in the index
- **C)** Discards uncommitted working changes while keeping HEAD in place
- **D)** Pushes a revert commit directly to the upstream remote branch

### Question 7
**How does 'git reset --hard' differ fundamentally from 'git reset --soft'?**

- **A)** --soft permanently erases file modifications; --hard preserves unstaged files
- **B)** --hard discards all modifications in both staging index and working directory; --soft preserves them staged
- **C)** --hard only operates on remote tracking branches
- **D)** --soft produces an explicit merge commit recorded in the branch history

### Question 8
**Which command formats and prints repository commit history as an ASCII visual branch topology graph?**

- **A)** git status
- **B)** git log --oneline --graph --decorate --all
- **C)** git reflog
- **D)** git branch -a

### Question 9
**What is the role of Git's 'reflog' (reference log)?**

- **A)** Logs network connection latency during remote git push commands
- **B)** Records every local update to HEAD and branch pointers, allowing recovery of deleted commits
- **C)** Stores cryptographic GPG signatures for signed tags and releases
- **D)** Tracks uncommitted file edits made in external text editors

### Question 10
**How does 'git rebase' differ from 'git merge' when integrating branch features?**

- **A)** Rebase preserves chronological multi-parent merge commits; merge destroys history
- **B)** Rebase replays local commits on top of upstream for a linear history; merge combines branches with a merge commit
- **C)** Rebase can only be executed on the production main branch
- **D)** Merge requires network connectivity whereas rebase is strictly offline

### Question 11
**Which file specifies filename and directory patterns that Git must intentionally avoid tracking?**

- **A)** .gitconfig
- **B)** .gitignore
- **C)** .gitmodules
- **D)** .gitattributes

### Question 12
**What action does running 'git commit --amend' execute on the repository?**

- **A)** Reverts the previous commit and deletes its files
- **B)** Combines newly staged modifications into the previous commit and allows updating its message
- **C)** Creates an annotated release tag on the previous commit
- **D)** Merges the active branch into origin/main

### Question 13
**Which command safely reverses the code changes introduced by a previous commit in a shared public branch?**

- **A)** git reset --hard
- **B)** git revert <commit-hash>
- **C)** git rebase -i
- **D)** git clean -fd

### Question 14
**What does the term 'Detached HEAD' state signify in Git?**

- **A)** The local repository contains zero commits
- **B)** HEAD points directly to a specific commit hash rather than a named branch reference
- **C)** The .git directory has been damaged or deleted
- **D)** The remote Git repository cannot be reached over the network

### Question 15
**Which command removes all untracked files and directories from the working tree?**

- **A)** git reset --hard
- **B)** git clean -fd
- **C)** git rm --cached
- **D)** git checkout .

### Question 16
**What modifications does 'git diff --staged' (or --cached) display?**

- **A)** Differences between working directory files and the staging index
- **B)** Differences between staged files in the index and the most recent commit (HEAD)
- **C)** Differences between local main and upstream origin/main
- **D)** A summary list of uncommitted binary files

### Question 17
**Which Git command searches tracked files in the repository for lines matching a specified pattern or regex?**

- **A)** git grep
- **B)** git find
- **C)** git locate
- **D)** git scan

### Question 18
**What is the architectural purpose of Git's 'Index' (or Staging Area)?**

- **A)** The remote central server repository hosting git objects
- **B)** An intermediate staging preparation layer between the working directory and commit history
- **C)** A relational database caching author email addresses
- **D)** An append-only log of deleted Git branches

### Question 19
**Which command sets global user author identity applied to all future commits on the current machine?**

- **A)** git user.set
- **B)** git config --global user.name 'Name' && git config --global user.email 'email'
- **C)** git auth login
- **D)** git init --identity

### Question 20
**What is the distinction between 'git branch -d feature' and 'git branch -D feature'?**

- **A)** -d deletes remote branches; -D operates strictly locally
- **B)** -d safely deletes fully merged branches; -D forces deletion even if unmerged
- **C)** -d renames the branch; -D deletes the branch
- **D)** -D is a deprecated syntax alias in modern Git releases

### Question 21
**Which Git debugging tool performs a binary search through commit history to isolate the commit that introduced a defect?**

- **A)** git blame
- **B)** git bisect
- **C)** git inspect
- **D)** git track

### Question 22
**What information does running 'git blame <file>' display?**

- **A)** Syntax and linting errors identified within the specified file
- **B)** Line-by-line annotations displaying the author, commit hash, and timestamp of the last edit
- **C)** Uncommitted working tree modifications made to that file
- **D)** Access permissions of collaborators allowed to edit the file

### Question 23
**What occurs when executing 'git rm --cached <file>'?**

- **A)** Deletes the file from physical disk storage permanently
- **B)** Removes the file from Git staging index while keeping the physical file intact on disk
- **C)** Reverts the file to its state in the previous commit
- **D)** Erases the file exclusively from the upstream remote repository

### Question 24
**Which command clones and checks out nested submodule repositories referenced in a cloned project?**

- **A)** git submodule update --init --recursive
- **B)** git clone --modules
- **C)** git sub checkout
- **D)** git package install

## Comprehensive Answer Key & Technical Explanations

### Q1: **Option B** — `git init`

- **Deep Technical Rationale**: **git init** creates a new Git repository by generating the hidden `.git` metadata directory.

### Q2: **Option B** — `git fetch downloads remote objects without merging; git pull fetches and merges into HEAD`

- **Deep Technical Rationale**: **git fetch** retrieves remote commits without touching your working tree; **git pull** runs fetch followed by a merge or rebase.

### Q3: **Option B** — `git stash`

- **Deep Technical Rationale**: **git stash** temporarily saves modified tracked files to a local stack, restoring a clean working directory.

### Q4: **Option B** — `Creates and immediately checks out a new branch named feature/auth`

- **Deep Technical Rationale**: `git checkout -b <branch>` (or modern `git switch -c <branch>`) creates and switches to a new branch atomically.

### Q5: **Option C** — `git cherry-pick <commit-hash>`

- **Deep Technical Rationale**: **git cherry-pick** copies a specific commit from any branch and applies it directly on top of the active HEAD.

### Q6: **Option B** — `Rewinds HEAD by one commit while leaving all changed files staged in the index`

- **Deep Technical Rationale**: **git reset --soft** moves the HEAD pointer backward while keeping all file modifications staged in the index for recommitting.

### Q7: **Option B** — `--hard discards all modifications in both staging index and working directory; --soft preserves them staged`

- **Deep Technical Rationale**: **--hard** discards all uncommitted modifications across the index and working directory, restoring exact commit state.

### Q8: **Option B** — `git log --oneline --graph --decorate --all`

- **Deep Technical Rationale**: **git log --graph --oneline --decorate --all** renders branches, merge commits, and tag pointers in visual ASCII format.

### Q9: **Option B** — `Records every local update to HEAD and branch pointers, allowing recovery of deleted commits`

- **Deep Technical Rationale**: The **reflog** keeps a chronological journal of all HEAD pointer movements, enabling rescue of orphaned commits or lost branches.

### Q10: **Option B** — `Rebase replays local commits on top of upstream for a linear history; merge combines branches with a merge commit`

- **Deep Technical Rationale**: **git rebase** rewrites branch commits on top of another base commit to maintain a clean linear commit graph.

### Q11: **Option B** — `.gitignore`

- **Deep Technical Rationale**: The **.gitignore** file lists file patterns (such as build artifacts, cache files, and secrets) that Git will not track.

### Q12: **Option B** — `Combines newly staged modifications into the previous commit and allows updating its message`

- **Deep Technical Rationale**: **git commit --amend** replaces the most recent commit on the active branch with a new commit incorporating staged changes.

### Q13: **Option B** — `git revert <commit-hash>`

- **Deep Technical Rationale**: **git revert** generates a new commit containing the exact inverse diff of the target commit, preserving public commit history.

### Q14: **Option B** — `HEAD points directly to a specific commit hash rather than a named branch reference`

- **Deep Technical Rationale**: A **detached HEAD** occurs when you checkout a specific commit hash or tag rather than a named branch pointer.

### Q15: **Option B** — `git clean -fd`

- **Deep Technical Rationale**: **git clean -fd** forcefully purges untracked files (-f) and untracked directories (-d) from the workspace.

### Q16: **Option B** — `Differences between staged files in the index and the most recent commit (HEAD)`

- **Deep Technical Rationale**: **git diff --staged** displays the exact code changes that have been added to the staging index ready for the next commit.

### Q17: **Option A** — `git grep`

- **Deep Technical Rationale**: **git grep** searches repository files, staging index, and commit history for pattern matches quickly.

### Q18: **Option B** — `An intermediate staging preparation layer between the working directory and commit history`

- **Deep Technical Rationale**: The **Index** (staging area) is a binary cache where proposed file modifications are assembled before creating a commit.

### Q19: **Option B** — `git config --global user.name 'Name' && git config --global user.email 'email'`

- **Deep Technical Rationale**: **git config --global** configures user identity in `~/.gitconfig`, attributing future commits to that author.

### Q20: **Option B** — `-d safely deletes fully merged branches; -D forces deletion even if unmerged`

- **Deep Technical Rationale**: **-d** safeguards against losing unmerged work; **-D** (equivalent to `--delete --force`) deletes regardless of merge status.

### Q21: **Option B** — `git bisect`

- **Deep Technical Rationale**: **git bisect** uses binary search between known good and bad commit boundaries to pinpoint the exact commit causing a bug.

### Q22: **Option B** — `Line-by-line annotations displaying the author, commit hash, and timestamp of the last edit`

- **Deep Technical Rationale**: **git blame** annotates every line of a file with the commit hash, author name, and date of its last modification.

### Q23: **Option B** — `Removes the file from Git staging index while keeping the physical file intact on disk`

- **Deep Technical Rationale**: **git rm --cached** stops tracking the file in Git version control while leaving the physical file untouched in the workspace.

### Q24: **Option A** — `git submodule update --init --recursive`

- **Deep Technical Rationale**: **git submodule update --init --recursive** registers, clones, and checks out all nested git submodules configured in `.gitmodules`.
