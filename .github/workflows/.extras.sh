#!/bin/sh

## Get go from apt
#sudo apt-get build-dep .

# Get go from Google
go_req=`grep '^go [0-9.]\+$' go.mod | grep -o '[0-9.]\+'`
go_arch=`dpkg --print-architecture`
go_pkg=`curl -sL "https://go.dev/dl/?mode=json&include=all" | jq -r --arg major ${go_req} --arg arch ${go_arch}  'first(.[] | select(.version | contains($major))) | .files[] | select(.os == "linux" and .arch == $arch) | .filename'`
echo Required go version: ${go_req}
sudo apt-get install build-essential debhelper
sudo apt remove golang-*-go
echo Fetching ${go_pkg}...
curl -L -o /tmp/go.tar.gz https://dl.google.com/go/${go_pkg}
sudo rm -rf /usr/local/go
sudo tar -C /usr/local/lib -xzf /tmp/go.tar.gz
sudo ln -sf ../lib/go/bin/go /usr/local/bin/go
sudo ln -sf ../lib/go/bin/gofmt /usr/local/bin/gofmt
echo Using Go: `which go`
# End hack
