#!/bin/bash

# check out to each one of these and run cargo run
# d58df12
# 5437fd1
# 96342e5
# 4fd6563



for i in {1..1}
do
  (
    output=$(cargo run --release --quiet sim -s test_data/minrt_v4.s -i test_data/contest -o test_data/minrt_word.ppm --verbose | tail -n 1)
    echo "$output"
  ) &
done
wait