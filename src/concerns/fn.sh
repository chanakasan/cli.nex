fn_hello() {
  echo " Hello Nex CLI !"
  echo " Usage: nex <1> <2> <3>"
  echo
}

fn_init() {
  bash $(get_cli_path)/setup/init.sh
}

fn__config() {
  get_config_path
}

fn__root() {
  get_root_path $1
}

fn__plugin() {
  get_plugin_path $1
}

fn__mod() {
  get_mod_path $1
}
