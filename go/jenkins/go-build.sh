# Work around for slave path.
export JENKINS_HOME_SLAVE=/var/lib/jenkins/slave

# Set $GOPATH
export GOPATH=${JENKINS_HOME_SLAVE}/workspace/${JOB_NAME}

export PATH=$PATH:$GOPATH/bin

# go 1.5 vendor support
export GO15VENDOREXPERIMENT=1

go build
