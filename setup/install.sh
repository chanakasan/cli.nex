#!/bin/bash

set -e

nex_root_path=$HOME/dotfiles
symlink_src=$nex_root_path/cli.nex/dist/nex
symlink_dest_dir=/usr/local/bin

if [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
  symlink_dest_dir=$HOME/bin
fi

# start
echo " Installing - Nex CLI"

# symlink
symlink_1=$symlink_dest_dir/nex
sudo ln -nfs $symlink_src $symlink_1
echo " => created symlinks"
echo " * $symlink_1"

# finish
echo " done"
echo
