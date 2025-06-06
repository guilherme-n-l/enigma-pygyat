#!/bin/bash
output_dir=".pythonified"
main_file="main.py"
venv_dir="venv"

verbose=false; [ "$1" == "--verbose" ] && verbose=true

[ -d "$output_dir" ] && rm -rf $output_dir

mkdir $output_dir

if [ ! -d "$output_dir" ]; then
    echo "No venv found. Exiting..."
    exit 1
fi

source $venv_dir/bin/activate

files=$(find . -name "*.gyat")
for f in $files; do
    base_name=$(basename $f .gyat)
    dir_name=$(dirname $f)
    dir_name=${dir_name#./}
    dir_name=$([ "$dir_name" = "." ] && echo "" || echo "$dir_name/")
    command="mkdir -p $output_dir/$dir_name"
    [ "$verbose" == true ] && echo "+ $command"
    eval $command

    output_file="$output_dir/$dir_name$base_name.py"
    command="pygyat -o $output_file -c $f"
    [ "$verbose" == true ] && echo "+ $command"
    eval $command || exit 1
done

[ -f "$output_dir/$main_file" ] && cd $output_dir && python $main_file
