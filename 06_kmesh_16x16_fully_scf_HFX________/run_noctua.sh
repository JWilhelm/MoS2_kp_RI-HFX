#!/bin/bash
#SBATCH -t 112:00:00
#SBATCH --exclusive
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=8
#SBATCH -N 20
#SBATCH -J "MoS2"

export OMP_NUM_THREADS=8
export OMP_PLACES=cores
export OMP_PROC_BIND=true

module reset
module load chem/CP2K/2023.1-foss-2022b-gcc-openmpi-openblas
srun /pc2/groups/hpc-prf-eprop2d/eprop2d1_Jan/02_compile_CP2K/37*/cp2k/exe/local/cp2k.pdbg2 *inp &>> cp2k.out
