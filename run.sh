#!/bin/bash


for i in {1..3}
do
  (
   num=$((128 * 2**(i-1)))
   cargo run --release sim -b "./test_data/minrt_${num}.bin" --verbose --log "./test_data/minrt_${num}.log"
   output_file="./test_data/output${num}.txt"
   reference_file="./test_data/minrt_${num}.ppm"
   cargo run --release diff -s "$reference_file" -t "$output_file"
  ) &
done
wait