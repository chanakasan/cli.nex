nex_cli() {
  local nex_cli_root=$HOME/dotfiles/nex-cli
  local main_cmd="nex $1 $2 $3"
  local a1="$1"
  local a2="$2"
  local a3="$3"
  local fn=_$a1
  local cmd1=_nx_$a1'_'$a2
  local cmd2=_nx_$a1
  if [ -z "$a1" ]; then
    echo " usage: nex <command> <arg>"
  elif [ "$a1" == "install" ]; then
    run_install_script $a2 $a3
  elif [ "$(is_function $fn)" == "true" ]; then
    $fn "${@:2}"
  elif [ "$(is_command $cmd1)" == "true" ]; then
    $cmd1 "${@:3}"
  elif [ "$(is_command $cmd2)" == "true" ]; then
    $cmd2 "${@:2}"
  else
    echo " not_found: $main_cmd"
  fi
}

run_install_script() {
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

_hello() {
  echo Hello $1 !
}

_init() {
  echo " Nex CLI Init"
  sh $nex_cli_root/lib/nex-cli-init.sh
}