#!/bin/bash

# arguments:
# 1. rider UUID
# 2. event rate (time between consecutive incoming heart rate observations)
# 3. number of iterations (amount of generated heart rate observations)

for _ in $(seq 1 $3); do
  # generate random heart rate value between 60 and 190
  # (this interval lies in between the resting and maximum heart rate of the
  #  used testing profile)
  value=$(($RANDOM % 130 + 60))
  # post heart rate observation on stream according to template
  push_heart_rate.sh $1 $value
  # sleep before the next observation
  sleep $2
done
