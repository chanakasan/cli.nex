main() {
  local install_dir=$HOME/dotfiles/nex-cli
  local symlink_src=$install_dir/dist/nex
  local symlink_dest=/usr/local/bin/nex
  echo " => Creating a symlink at $symlink_dest"
  sudo ln -nfs $symlink_src $symlink_dest
  echo " => Symlink created"
  echo
}  

main
