#!/bin/bash

directory="/home/matteo/Documents/PHD/Pipeline/generator/graphs/graphformat"

for filename in "$directory"/*.graph; do
  for experiment in "kernel-size-simple" "kernel-size-maximum-critical-set"; do
    ./bin/kernel-mis --input-file="$filename" --experiment="$experiment" --verbose --table
  done
  # for experiment in 
  # for ((i=0; i<=3; i++)); do
  #     ./MyProgram.exe "$filename" "Logs/$(basename "$filename" .txt)_Log$i.txt"
  # done
done