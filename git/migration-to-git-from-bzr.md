### Library
Try the libraries first.

- [bazaar fast-import plugin](http://doc.bazaar.canonical.com/plugins/en/fastimport-plugin.html)
- [bzr-git](https://launchpad.net/bzr-	git/+download)
- [git-remote-bzr](https://github.com/felipec/git-remote-bzr)

If all libs don't work well, but you can export/import some commits by `fast-import`, then use the `fast-import` and `git cherry-pick`.

```bash
#
# bzr
#

% bzr checkout bzr::xxx/trunk
% mkdir ~/trunk.git
% cd ~/trunk.git

# Set checkpoint small number. It takes time to finish, but export more commits when fail.
% bzr fast-export --checkpoint=10 --export-marks=marks.bzr ../trunk | git fast-import --export-marks=marks.git

# import/export from the specific revision
% bzr fast-export --checkpoint=1 --baseline -r 100 --rewrite-tag-names --export-marks=marks.bzr ../trunk | git fast-import --export-marks=marks.git

#
# git
#

% cd ~/xxx
% git remote add trunk ../trunk.git
% git fetch add

# cherry-pick the imported commits
git log trunk/master | grep "commit " | awk '{print $2}' | tac | xargs -I % git cherry-pick --strategy=recursive -X theirs %

# with sed to exclude the cherry-pick fail commit
% git log trunk/master | grep "commit " | awk '{print $2}' | tac | sed -n '/2740f1e/,//p' | xargs -I % git cherry-pick --strategy=recursive -X theirs %
```
