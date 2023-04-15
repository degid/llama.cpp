#!/bin/bash
set -e

for (( thrd = 1; thrd <= 12; thrd++))
do
for (( i = 0; i < 3; i++))
do
../build/bin/main -n 128 --seed 1681376593 --model ../models/65B/ggml-model-f16.bin --threads "$thrd"
done
done

