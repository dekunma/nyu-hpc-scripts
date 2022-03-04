#!/bin/bash
#!/bin/bash
#SBATCH --cpus-per-task=2  
#SBATCH --time=10:00:00                 
#SBATCH --mem=32GB
#SBATCH --job-name=c_d
#SBATCH --output=results/c_d.out

cd /scratch/dm4524/ai4ce/multi-agent-perception/det/
zip -r V2X-Sim-det-logs-2022-03-04.zip logs/ logs2/ logs3/ logs4/ logs5/ logs6/ logs7/ logs-test/ logs-val1/ logs-val2/ logs-val3/