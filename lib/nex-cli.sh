nex_cli() {
  local nex_cli_root=$HOME/dotfiles/nex-cli
  local a1="$1"
  local a2="$2"
  local a3="$3"
  local fn1=_$a1
  local cmd1=_nx_$a1'_'$a2
  local cmd2=_nx_$a1
  if [ -z "$a1" ]; then
    print_usage
  elif [ "$a1" == "install" ]; then
    _run_install_script $a2 $a3
  elif [ "$(is_function $fn)" == "true" ]; then
    $fn1 "${@:2}"
  elif [ "$(is_command $cmd1)" == "true" ]; then
    $cmd1 "${@:3}"
  elif [ "$(is_command $cmd2)" == "true" ]; then
    $cmd2 "${@:2}"
  else
    print_usage
  fi
}

print_usage() {
  echo " Usage: nex <command> <arg>"
}

_run_install_script() {
  local full_script_name=install-$1.sh
  local arg1="$2"
  local file_path_1=$devscript_path/src/$full_script_name
  if [ -f $file_path_1 ]; then
    echo " Running $full_script_name"
    bash  $file_path_1 $arg1
  else
    echo " script not found: $full_script_name"
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

_test_one() {
  echo Test One !
}

_test_two() {
  echo Test One !
}

_init() {
  sh $nex_cli_root/lib/nex-init.sh
}