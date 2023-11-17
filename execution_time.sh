#!/bin/bash

# echo "Start of script execution time."

script_paths=(
    './Test_scripts/sleep_5.sh'
    './Test_scripts/sleep_10.sh'
    './Test_scripts/sleep_20.sh'
    './Test_scripts/sleep_30.sh'
    './Test_scripts/sleep_66.sh'
    './Test_scripts/sleep_70.sh'
)

for script_path in "${script_paths[@]}"; do
    # echo "Execution time: $script_path"

    start_time=$(date +%s)

    bash "$script_path"

    end_time=$(date +%s)

    execution_time=$((end_time - start_time))

    if [ "$execution_time" -gt 60 ]; then
        echo "Script execution time $script_path: ${execution_time} seconds."
        echo "------------------------------------------"
    fi
done

# echo "Completion."
