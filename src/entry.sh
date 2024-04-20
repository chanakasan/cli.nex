source $(nex _config)

for f in $nex_plugin_base/*.plugin; do
  tmp_file=$f/src/entry.sh
  if [ -f "$tmp_file" ]; then
     source $tmp_file
  fi
done

for f in $nex_cli_base/src/bash/*.sh; do
  if [ -f "$f" ]; then
     source $f
  fi
done
