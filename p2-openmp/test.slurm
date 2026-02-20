#!/bin/bash
#SBATCH --job-name=par_gauss
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:20:00
#SBATCH --output=test_outputs/par_gauss_%j.out

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export OMP_PROC_BIND=true
export OMP_PLACES=cores

SIZE=$1

echo "Threads: $OMP_NUM_THREADS"

./par_gauss $SIZE