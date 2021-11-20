#!/bin/bash

set -xe

#
# Installing non-package dependencies
#

mkdir -p ~/.local/bin

# starship.rs
#sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- -b ~/.local/bin

#
# Deploy config files
#

cd config
FILES=(`git ls-files`)

for FILE_NAME in "${FILES[@]}"; do
    ln -sr "${FILE_NAME}" "$HOME/${FILE_NAME}"
done

cd -
