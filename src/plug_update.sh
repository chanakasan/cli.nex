main() {
  if [ -z "$1" ]; then
    echo " Usage: nex update plug cli|git|mux|run|tools"
    echo
    exit 1
  fi
  local plugin_name=$1.nexplugin
  local base_dir=$HOME/dotfiles/plugins
  local plugin_path=$base_dir/$plugin_name
  cd $plugin_path

  if [ -n "$(git status --porcelain)" ]; then
    echo " Please commit changes first"
    echo " in $plugin_path"
    echo
    exit 1
  fi

  echo " Updating Plugin - $plugin_name"
  run_git_pull
  echo " done"
  echo
}

run_git_pull() {
  local branch_name=$(git rev-parse --abbrev-ref HEAD)
  local output=$(git pull origin $branch_name 2>&1)
  if [[ $output == *"Already up to date."* ]]; then
      echo " no new updates"
  else
      echo " plugin updated"
  fi
}

main $@
