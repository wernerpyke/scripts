function process_file {
    file="$1"
    timestamp=`stat -f "%Sm" -t "%Y%m%d%H%M" "${file}"`

    echo "Processing ${file} with modified ${timestamp}"

    sips -Z 640 "${file}"

    touch -t ${timestamp} "${file}"
}

folder="$1"

pushd $folder




while read -rd $'\0' file; do
    process_file "$file"
done < <(find  . -type f -iname '*.jpg' -print0)

popd