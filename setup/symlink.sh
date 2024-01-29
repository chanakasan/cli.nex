main() {
  local src_dir=$HOME/dotfiles/nex-cli
  local symlink_src=$src_dir/dist/nex
  local symlink_path=/usr/local/bin/nex
  sudo ln -nfs $symlink_src $symlink_path
}  

main
