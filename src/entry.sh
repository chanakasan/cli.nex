echo "Nex Cli Ready"

source $(nex _config)

for f in $nex_plugin_base/*.plugin; do
  tmp_file=$f/src/entry.sh
  if [ -f "$tmp_file" ]; then
     source $tmp_file
  fi
done
