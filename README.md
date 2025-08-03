# frp-debian

[![Debian Build Bot](https://github.com/donmor/frp-debian/actions/workflows/dpkg-buildpackage.yml/badge.svg?event=release)](https://github.com/donmor/frp-debian/actions/workflows/dpkg-buildpackage.yml)

Unofficial Debian packaging scripts for [FRP project](https://github.com/fatedier/frp).

``` bash
# tee /etc/apt/sources.list.d/frp.list <<EOF
deb [trusted=yes] https://github.com/donmor/frp-debian/releases/latest/download ./
# deb-src [trusted=yes] https://github.com/donmor/frp-debian/releases/latest/download ./
EOF
```
