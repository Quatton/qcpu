#!/bin/bash


for i in {1..3}
do
  (
   cargo run --release --quiet sim -b "./test_data/minrt_$((128 * 2**(i-1))).bin" --verbose
  ) &
done
wait