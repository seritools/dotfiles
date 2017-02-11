#!/bin/zsh -e

# get script dir (repo root)
SCRIPTDIR=${0:a:h}

# initialize needed submodules
git submodule update --init --recursive

# start the symlinking (to HOME)
stow -R -d "$SCRIPTDIR" -t ~ zsh git fonts