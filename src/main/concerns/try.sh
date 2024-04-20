try_commands() {
  try_cmd $cmd_1 "${@:3}"
  try_cmd $cmd_2 "${@:2}"
}

try_scripts() {
  try_script $script_1 "${@:4}"
  try_script $script_2 "${@:3}"
  try_script $script_3 "${@:2}"
}

try_script() {
  local file=$(get_cli_path)/src/script/$1
  if is_file $file; then 
    bash $file ${@:2}
    exit
  fi
}

try_cmd() {
  if is_cmd $1; then
    "$1" ${@:2}
    exit
  fi
}
