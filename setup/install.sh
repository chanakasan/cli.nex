#!/bin/bash

set -e

nex_root_path=$HOME/dotfiles
symlink_src=$nex_root_path/cli.nex/dist/nex
symlink_dest_dir=/usr/local/bin

# start
echo " Installing - Nex CLI"

# symlink
symlink_1=$symlink_dest_dir/nex
symlink_2=$symlink_dest_dir/nx
sudo ln -nfs $symlink_src $symlink_1
sudo ln -nfs $symlink_src $symlink_2
echo " => created symlinks at $symlink_dest_dir"
echo " * $symlink_1"
echo " * $symlink_2"

# finish
echo " done"
echo
