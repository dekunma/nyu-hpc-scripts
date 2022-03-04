#!/bin/bash
#!/bin/bash
#SBATCH --cpus-per-task=2  
#SBATCH --time=10:00:00                 
#SBATCH --mem=32GB
#SBATCH --job-name=c_s
#SBATCH --output=results/c_s.out

cd /scratch/dm4524/ai4ce/multi-agent-perception/seg/
zip -r V2X-Sim-seg-logs-2022-03-04.zip logs/ logs4/ logs5/ logs6/ logs7/ logs8/ logs-test/ logs-val/