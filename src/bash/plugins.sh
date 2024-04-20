for f in $(nex _plugin)/*.plugin; do
  tmp_file=$f/src/entry.sh
  if [ -f "$tmp_file" ]; then
     source $tmp_file
  fi
done