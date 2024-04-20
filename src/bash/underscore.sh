alias _="nx_underscore_wrapper"
nx_underscore_wrapper() {
  source $nex_cli_base/src/ext/nx_underscore.sh
  nx_underscore $@
}
