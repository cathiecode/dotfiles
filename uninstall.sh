#!/bin/sh

set -xe

cd config

git ls-files | sed -e "s/^/rm -r ~\//g" | sh

cd -
