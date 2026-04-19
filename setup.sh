#!/usr/bin/env bash

dpkg-scanpackages pool/main /dev/null > dists/stable/main/binary-amd64/Packages
gzip -k dists/stable/main/binary-amd64/Packages

cd dists/stable/
apt-ftparchive release . > Release

gpg --armor --detach-sign -o Release.gpg Release
gpg --clearsign -o InRelease Release
