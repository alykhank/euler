#!/usr/bin/env bash

run=$1
ftype=$2
ext=$3

for problem in {1..10}; do
  problem=$(printf "%03d" "$problem")
  echo "iprofiler -timeprofiler -d profiles"$run" -o "$ftype""$problem" "$problem""$ext""
  iprofiler -timeprofiler -d profiles"$run" -o "$ftype""$problem" "$problem""$ext"
done
