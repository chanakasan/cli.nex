nx_remove_duplicates_from_path() {
    local old_IFS=$IFS
    IFS=":" # Set the Internal Field Separator to colon
    local -a path_array=($PATH) # Split PATH into an array
    IFS=$old_IFS

    local -A seen_paths
    local new_path=""
    for path in "${path_array[@]}"; do
        if [[ ! ${seen_paths[$path]} ]]; then
            seen_paths[$path]=1
            new_path="$new_path:$path"
        fi
    done

    new_path=${new_path#:}
    export PATH="$new_path"
}

nx_print_path() {
    local old_IFS=$IFS
    IFS=":" # Set the Internal Field Separator to colon
    local -a path_array=($PATH) # Split PATH into an array
    IFS=$old_IFS

    for path in "${path_array[@]}"; do
        echo "$path"
    done
}

nx_append_dir_to_path() {
    local dir="$1"
    if [ -d "$dir" ]; then
        if [[ ":$PATH:" != *":$dir:"* ]]; then
            export PATH="$dir:$PATH"
        fi
    fi
}
