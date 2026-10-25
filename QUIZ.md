# 🎓 Git & GitHub Masterclass Quiz (24 Questions & Complete Answer Key)

1. **What is the primary difference between Git and SVN?**
   - Answer: Git is distributed; every developer clone contains full repository history.
2. **What are the three trees in Git?**
   - Answer: Working Directory, Staging Area (Index), and Local Repository (HEAD).
3. **Which command sets your global author name?**
   - Answer: `git config --global user.name 'Name'`
4. **How do you stage changes interactively by hunk?**
   - Answer: `git add -p`
5. **How do you inspect staged changes ready to commit?**
   - Answer: `git diff --staged` (or `--cached`)
6. **What does 'git commit --amend' do?**
   - Answer: Combines staged changes with the most recent commit and updates the message.
7. **What is a Git branch under the hood?**
   - Answer: A lightweight 41-byte pointer referencing a commit SHA-1 hash.
8. **Which command creates and switches to a new branch?**
   - Answer: `git switch -c <name>` or `git checkout -b <name>`
9. **When does a Fast-Forward merge occur?**
   - Answer: When the base branch has no new commits since branching, simply moving the pointer forward.
10. **What do '<<<<<<< HEAD' markers mean?**
    - Answer: Delineates merge conflicts between the current checked-out branch and the incoming branch.
11. **Difference between merge and rebase?**
    - Answer: Merge retains true chronological history with a merge commit; rebase replays commits linearly.
12. **Golden rule of rebasing?**
    - Answer: Never rebase commits that have been pushed to a public, shared repository.
13. **Command to squash the last 4 local commits?**
    - Answer: `git rebase -i HEAD~4`
14. **Command to apply a single commit from another branch?**
    - Answer: `git cherry-pick <hash>`
15. **How do you temporarily shelve uncommitted dirty changes?**
    - Answer: `git stash`
16. **How do you unstage a file without losing code edits?**
    - Answer: `git restore --staged <file>`
17. **Difference between reset --soft and --hard?**
    - Answer: `--soft` moves HEAD back keeping changes staged; `--hard` discards changes completely.
18. **Why is 'git revert' safer on shared branches?**
    - Answer: It creates a new forward commit that inverts changes without rewriting history.
19. **What recovers lost commits after 'git reset --hard'?**
    - Answer: `git reflog`
20. **Difference between 'git fetch' and 'git pull'?**
    - Answer: `fetch` downloads objects without merging; `pull` fetches and immediately merges.
21. **Command to push and set upstream tracking?**
    - Answer: `git push -u origin <branch>`
22. **Automated binary search command for finding bug-introducing commits?**
    - Answer: `git bisect`
23. **Where are client Git hooks stored?**
    - Answer: `.git/hooks/`
24. **Safest force-push flag?**
    - Answer: `--force-with-lease`
