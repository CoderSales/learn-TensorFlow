### Reference:
- Hard delete unpublished commits [git reset --hard 0d1d7fc32](https://stackoverflow.com/questions/4114095/how-do-i-revert-a-git-repository-to-a-previous-commit)

#### Excerpt from above reference:

```
Hard delete unpublished commits
If, on the other hand, you want to really get rid of everything you've done since then, there are two possibilities. One, if you haven't published any of these commits, simply reset:

# This will destroy any local modifications.
# Don't do it if you have uncommitted work you want to keep.
git reset --hard 0d1d7fc32
```

-------------------------

Previous attempts to delete unpublished commits, reconcile histories and progress on main branch:
-  `--allow-unrelated-histories` [Git refusing to merge unrelated histories on rebase](https://stackoverflow.com/questions/37937984/git-refusing-to-merge-unrelated-histories-on-rebase)

- `git config pull.rebase false` [Solved "fatal: Need to specify how to reconcile divergent branches"](https://www.cyberithub.com/solved-fatal-need-to-specify-how-to-reconcile-divergent-branches/)

- `git push -u origin head` [fatal: The current branch master has no upstream branch](https://stackoverflow.com/questions/23401652/fatal-the-current-branch-master-has-no-upstream-branch)

- `git checkout master` | `git checkout -- path/to/foo`` [How do I fix a Git detached head? | If you want to delete your changes associated with the detached HEAD](https://stackoverflow.com/questions/10228760/how-do-i-fix-a-git-detached-head)

 - `git branch alt-history` | `git checkout alt-history` | `git config advice.detached head false` [Git Detached Head: What This Means and How to Recover | How Do I Fix a Detached HEAD in Git? | Getting Rid of the “Git Detached HEAD” Message](https://www.cloudbees.com/blog/git-detached-head)
 ### large file GitHub recommendation
 #### How to remove big file wrongly committed
 - [git : How to remove a big file wrongly committed](https://thomas-cokelaer.info/blog/2018/02/git-how-to-remove-a-big-file-wrongly-committed/)
 - `git update-ref -d refs/original/refs/heads/master` [Issues with pushing large files through Git](https://stackoverflow.com/questions/19858590/issues-with-pushing-large-files-through-git)
 - [Fixing the "this is larger than GitHub's recommended maximum file size of 50.00 MB" error](https://www.thisprogrammingthing.com/2013/fixing-the-this-exceeds-githubs-file-size-limit-of-100-mb-error/)
 - [BFG Repo-Cleaner](https://rtyley.github.io/bfg-repo-cleaner/)
 - [Managing large files](https://docs.github.com/en/repositories/working-with-files/managing-large-files)
 - [newren/git-filter-repo](https://github.com/newren/git-filter-repo)
 - [git-filter-repo(1) Manual Page](https://htmlpreview.github.io/?https://github.com/newren/git-filter-repo/blob/docs/html/git-filter-repo.html)
 - [Open Source YUM Package Manager Alternatives](https://alternativeto.net/software/yellowdog-updater-modified/?license=opensource)
 - [Git: Synchronizing changes stays in loop in VSCODE #139202 | microsoft/vscode](https://github.com/microsoft/vscode/issues/139202)
- Text and commands:

```
To record a macro and save it to a register, type the key q followed by a letter from a to z that represents the register to save the macro, followed by all commands you want to record, and then type the key q again to stop the recording.24 Aug 2020
```
[Use Vim macros to automate frequent tasks | Enable Sysadmin](https://www.redhat.com/sysadmin/use-vim-macros#:~:text=To%20record%20a%20macro%20and,again%20to%20stop%20the%20recording.)
- `$ git revert 4945db2` [How to revert a Git commit: A simple example](https://www.theserverside.com/tutorial/How-to-git-revert-a-commit-A-simple-undo-changes-example#:~:text=To%20undo%20changes%20associated%20with,commit%20occurred%2C%20use%20git%20reset.)
- git undo stage: `git add myfile.txt` [How do I undo 'git add' before commit?](https://stackoverflow.com/questions/348170/how-do-i-undo-git-add-before-commit)
- `git reset --soft HEAD~` [Undo Changes in Git: git checkout, git revert, & git reset | Undoing Your Last Commit (That Has Not Been Pushed)](https://www.nobledesktop.com/learn/git/undo-changes)
- [](https://github.com/CoderSales/unsupervised-learning-clustering/commit/35a376d61a72427f7e11d35e8e5b47ce302ec43a)