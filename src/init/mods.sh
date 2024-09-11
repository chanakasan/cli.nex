for dir in $(nex _mod)/*.mod; do
  if [ -d "$dir" ]; then
    nx_source_folder $dir/src
  fi
done
