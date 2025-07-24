#!/bin/sh

## Get go from apt
#sudo apt-get build-dep .

# Get go 1.23 from Google
sudo apt-get install build-essential debhelper
curl -o /tmp/go.tar.gz https://dl.google.com/go/go1.23.11.linux-`dpkg --print-architecture`.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local/lib -xzf /tmp/go.tar.gz
sudo ln -sf ../lib/go/bin/go /usr/local/bin/go
sudo ln -sf ../lib/go/bin/gofmt /usr/local/bin/gofmt
sudo apt remove golang-*-go
# End hack
