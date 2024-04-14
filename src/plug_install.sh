eval "$(nex _config)"
echo $(nex_plugin_path "git")
exit 1


main() {
  if [ -z "$1" ]; then
    echo " Usage: nex install plug bash|git|mux|run|tools"
    echo
    exit 1
  fi
  local plugin_name=$1.plugin
  local file=$nex_root_path/$plugin_name/setup/install.sh
  if [ -f $file ]; then
    echo " Running setup $file"
    bash $file ${@:2}
  else
    echo " setup not found: $file"
  fi
}

main $@
