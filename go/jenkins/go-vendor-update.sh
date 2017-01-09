#
# Use godep for vendoring
# https://github.com/tools/godep
#

# Work around for slave path.
export JENKINS_HOME_SLAVE=/var/lib/jenkins/slave

# Set $GOPATH
export GOPATH=${JENKINS_HOME_SLAVE}/workspace/${JOB_NAME}

export PATH=$PATH:$GOPATH/bin

# go 1.5 vendor support
export GO15VENDOREXPERIMENT=1

# Install the latest godep
go get -u github.com/tools/godep

# Show install list
godep go install -v ./...

# Update
repositoryName=xxx
packageList=`grep ImportPath Godeps/Godeps.json | awk '{print $2}' | grep -Eo "([a-zA-Z0-9].*[a-zA-Z0-9])" | grep -v ${repositoryName}`

echo ${packageList} | xargs go get -u -v
godep update ./...

# Save
godep save ./...

# Build check
go build
go test ./...

gitDiff=`git diff --name-only`

updateBranch=feature/vendor-update-`date "+%Y%m%d%k%M"`

git checkout -b ${updateBranch}
git add .
git commit -m "Update vendor ${gitDiff}"
git push origin ${updateBranch}

# TODO: Make a pull-request
