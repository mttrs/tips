# Git Hooks Set Up

## post-update
- Push your branch to a local bare branch. It's a hook for running a jenkins build.
- This would be good if a remote server doesn't accept any git hooks. It's kind of facke push.

```shell
################################
#
# Prepare a bare git repository
#
################################

# Make a bare repository on your local. Any place is ok.
% mkdir ~/local/github.com/mttrs/xxx
% cd ~/local/github.com/mttrs/xxx
% git init --bare

# Add your fork repository as a remote origin to use for push.
% git remote add origin git@github.com:mttrs/xxx.git

# Edit post-update
cp hooks/post-update.sample hooks/post-update

# Edit the post-update file.
# Ex. https://github.com/mttrs/notes/blob/master/git/hooks/post-update

# Confirm the exec permission
% ls -l hooks/post-update
-rwxr-xr-x hooks/post-update

# If no permission, run the following command
# % chmod a+x hooks/post-update


###################################
#
# Local repository for development
#
###################################

# GO library case
% cd $GOPATH/src/github/mttrs/xxx

# Add the local bare repository as remote
% git remote add local ~/local/github/mttrs/xxx

# Implement something....

# Push to local. Not to remote.
% git push local BRANCH_NAME

# In Stash, you will see a pull request link.
```
