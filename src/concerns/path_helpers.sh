get_home() {
  echo "$HOME"
}

get_nex_root() {
  echo $nex_root
}

get_cli_path() {
  echo $nex_cli_base
}

get_config_path() {
  echo $nex_config_file
}

get_root_path() {
  if [ -z "$1" ]; then
    echo $(get_nex_root)
  else
    echo $(get_nex_root)/$1.nex
  fi
}

get_support_path() {
  local base=$(get_cli_path)/src/support
  if [ -z "$1" ]; then
    echo $base
  else
    echo $base/$1/index.sh
  fi
}

get_plugin_path() {
  if [ -z "$1" ]; then
    echo $(get_nex_root)/plugins
  else
    echo $(get_nex_root)/plugins/$1.plugin
  fi
}

get_mod_path() {
  if [ -z "$1" ]; then
    echo $(get_nex_root)/mods
  elif [[ $1 == "u" ]] || [[ $1 == "user" ]]; then
    echo $(get_home)/user_mod
  else
    echo $(get_nex_root)/mods/$1.mod
  fi 
}

