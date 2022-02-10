#!/bin/bash
#SBATCH --cpus-per-task=2              
#SBATCH --time=6:00:00                 
#SBATCH --mem=16GB
#SBATCH --job-name=comp
#SBATCH --output=results/compress/a.out

cd /scratch/dm4524/data/
zip -r V2X-Sim-1.zip V2X-Sim-all/