#!/bin/bash

echo "Creating 5 zombie processes..."

for i in {1..5}; do
  (
    # Child process exits immediately
    exit 0
  ) &
done

echo "Zombies created. You can check them using the following command:"
echo "Example: ps -eo pid,ppid,state,cmd | grep Z"