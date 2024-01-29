nex_cli() {
  local nex_cli_root=$HOME/dotfiles/nex-cli
  local a1="$1"
  local a2="$2"
  local a3="$3"
  local fn=_$a1
  if [ -z "$a1" ]; then
    print_usage
  elif [[ $(type -t $fn ) == function ]]; then
    $fn "${@:2}"
  elif [ "$a1" == "install" ]; then
    _run_install_script $a2 $a3
  else
    print_usage
  fi
}

print_usage() {
  echo "Usage: nex <install|run> <script_name>"
}

_run_install_script() {
  local full_script_name=install-$1.sh
  local arg1="$2"
  local file_path_1=$nex_script_path/src/$full_script_name
  local file_path_2=$nex_cli_root/src/$full_script_name
  if [ -f $file_path_1 ]; then
    echo "Running $full_script_name"
    bash  $file_path_1 $arg1
  elif [ -f $file_path_2 ]; then
    echo "Running $full_script_name"
    bash  $file_path_1 $arg1
  else
    echo "script not found: $full_script_name"
  fi
}

_reset() {
  local dir=$1
  local file=$HOME/dotfiles/$dir/setup/install.sh
  if [ -z "$dir" ]; then
    echo aborting
  elif [ -f $file ]; then
    echo " Running $file"
    sh $file
  else
    echo " script not found: $file"
  fi
}

_hello() {
  echo Hello $1 !
}
