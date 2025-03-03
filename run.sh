#!/bin/bash


for i in {1..3}
do
  (
   num=$((128 * 2**(i-1)))
   qcpu sim -b "./test_data/minrt_${num}.bin" --verbose
   output_file="output${i}.txt"
   reference_file="minrt_${num}.ppm"
   if [ -f "$output_file" ]; then
     qcpu diff -s "$reference_file" -t "$output_file"
   fi
  ) &
done
wait