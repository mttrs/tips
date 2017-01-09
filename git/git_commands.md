# Add
```
git add -u
git add -A
git add <paths>
```
### Add commit partially
```
git add -p
git add --patch
See "INTERACTIVE MODE" in "man git-add"
```
# Branch
See merged branch
```
git branch --merged master
```
# Checkout
Checkout a branch or paths to the working tree
```
git checkout

# Interactively select hunks in the difference between the <tree-ish> (or the index, if unspecified) and the working tree.
git checkout -p
```

# Cherry
- Find commits yet to be applied to upstream
```
git cherry [-v] [<upstream> [<head> [<limit>]]]

e.g. on develop branch
git cherry -v master
+ f27c7 test1
+ 109a7 test2
```

# Cherry-pick
```
git cherry-pick <commit>
git cherry-pick <(from) commit>..<(to)commit>

# Apply imported commit if there is a conflict
# http://stackoverflow.com/questions/14337945/how-do-i-resolve-cherry-pick-conflicts-using-their-changes
git cherry-pick --strategy=recursive -X theirs <commit>
```

# Clean
```
git clean -f <path>

# Set clean.requireForce as false to ignore -f
~/.gitconfig
[clean]
  requireForce = false
```


# Commit
```
git commit
git commit <paths>
git commit -v
git commit --amend
```
- **-a, --all**: Stage files which have been modified and deleted automatically, and commit.
- ```--author=<author>```: Override the commit author.
- **-v, --verbose**: Show unified diff between the HEAD commit and what would be committed at the bottom of the commit message template. Note that this diff output doesn't have its lines prefixed with #.
e.g.
```
$ git commit -v

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
# On branch test
# Changes to be committed:
#       modified:   a
#
# ------------------------ >8 ------------------------
# Do not touch the line above.
# Everything below will be removed.
diff --git a/a b/a
index 30d74d2..28f8072 100644
--- a/a
+++ b/a
@@ -1 +1,3 @@
-test
\ No newline at end of file
+test
+bonjour
+hallo
\ No newline at end of file

```

```
# Open a editor
git commit -a

# One line commit
git commit -am 'Awesome'
```


# Config
```
git config user.name xxx
git config user.email xxx@example.com
```


# Delete an old remote git branch
[reference](http://stackoverflow.com/questions/3184555/cleaning-up-old-remote-git-branches)
```
git branch -r -d origin/my_remote_branch
git push origin :my_remote_branch
```


# Diff
```
git diff
git diff --cached
git diff HEAD

# Show the diff between commits
git diff 123456 99999 -- xxx
```


# Lsfiles
- Show information about files in the index and the working tree
```
git ls-files

ex)
app/foo
app/lint.xml
...
```


# Log
```
git log -p
git log <paths>
git log --grep=<pattern>

# History tree
git log --graph --oneline --all

# Continue listing the history of a file beyond renames.
git log --follow <file path>
```

# Merge
- --no-ff: Create a merge commit even when the merge resolves as a fast-forward.
```
git merge --no-ff
```

# name-rev
- Find symbolic names for given revs
```
% git name-rev 803cbe2 --name-only                                                                                             tags/1.0.0~5
```

# Rebase
- Forward-port local commits to the updated upstream head
```
git rebase -i HEAD~x

# Delete a specific commit
git rebase -i HEAD~x
# Interactive mode
# Just delete the commit from the list
pick a89997b xxx
pick a89997b yyy # Delete!
pick a89997b zzz
```


# Reset
```
git reset HEAD^
git reset --hard HEAD^
git reset --hard origin/<branch name> # Reset local branch to the latest remote branch HEAD

# Use the command when you want to reset rebase.
git reset --hard ORIG_HEAD
```

# Reflog
```
git reflog
```

# Rename a local branch
```
git branch (-m | -M) [<oldbranch>] <newbranch>

# man git-branch
# eg. $ git branch -m xxx
```

# Revert
```
$ git revert -m 1 <commit>
```

# Show
- Show various type of objects
```
git show

# e.g. Show the HEAD of a file
git show HEAD:xxx

# Show file contents in the specific commit
git show 123445:xxx

# Show file contents in the specific branch
git show <branch>:xxx
```

# Show branch
```
git show-branch

git branch -a --contains <commit>

# Only list branches which contain the specified commit (HEAD if not specified). Implies --list.
git branch --contains 803cbe2                                                       
feature/foo
* master
  muhaha
```

# Stash
###Stash the changes in a dirty working directory away
```
# Save your local modifications to a new stash, and run git reset --hard to revert them.
git stash
git stash save <message>

# With -p or --patch, you can interactively select hunks from the diff between HEAD and the working tree to be stashed.
git stash -p

git stash list

# Show the changes recorded in the stash
git stash show
git stash show -p stash@{1}
git stash show -v

# Remove a single stashed state from the stash list and apply it on top of the current working tree state.
pop [--index] [-q|--quiet] [<stash>]

git stash pop

# Like pop, but do not remove the state from the stash list. Unlike pop, <stash> may be any commit that looks like a commit created by stash save or stash create.
apply [--index] [-q|--quiet] [<stash>]

git stash apply
```

# Tips
## How to delete mutiple remote remogitory?
http://stackoverflow.com/questions/10555136/delete-multiple-remote-branches-in-git
```
# Show remote branch, filter by PREFIX, out put the branch, then send request to delete them

# git branch -r
# origin/master
# origin/develop
# ...

git branch -r | awk -F/ '/PREFIX/ { print $2 }' | xargs -I {} git push origin :{}

```
