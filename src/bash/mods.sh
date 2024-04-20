for f in $(nex _mod)/*.mod; do
  tmp_file=$f/src/entry.sh
  if [ -f "$tmp_file" ]; then
     echo source $tmp_file
  fi
done
