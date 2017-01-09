#!/bin/sh

#
# Use case: Old tag format is x_x_x, but new tag one is x.x.x
# You want to convert, check diff send the new tag to the remote etc
#
# ex) % sh tagManagement.sh
#

oldTags=(`git tag | grep -E '\d_\d_\d'`)

# If you see nothing as output, it means 'old tag = new tag'! These are identical. So, Happy:)
diffWithOldAndNewTag() {
        for oldTag in $@
        do
                newTag=(`echo ${oldTag} | gsed -e "s/_/./g"`)
                git diff ${oldTag} ${newTag}
        done
}

# For remote
deleteRemoteOldTags() {
        for oldTag in $@
        do
                git push origin :${oldTag}
        done
}

# For local
deleteLocalOldTags() {
        for oldTag in $@
        do
                git tag -d ${oldTag}
        done
}

diffWithOldAndNewTag ${oldTags[@]}

# Sample of use of deleteOldTags
#if diffWithOldAndNewTag ${oldTags[@]}; then
#       deleteRemoteOldTags ${oldTags[@]}
#fi
#
#if diffWithOldAndNewTag ${oldTags[@]}; then
#       deleteLocalOldTags ${oldTags[@]}
#fi
#
