#!/bin/bash

SIZE=4000

for threads in 1 2 4 8 16
do
    sbatch --cpus-per-task=$threads test.slurm $SIZE
done