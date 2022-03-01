#!/bin/bash
echo make $2

sbatch <<EOT
#!/bin/bash
#SBATCH --cpus-per-task=3      
#SBATCH --time=1:00:00                 
#SBATCH --mem=16GB
#SBATCH --job-name=t_$1
#SBATCH --output=results/test/d_$1.out

cd /scratch/dm4524/ai4ce/multi-agent-perception/det/
source /scratch/dm4524/env.sh
export PYTHONPATH="${PYTHONPATH}:/scratch/dm4524/ai4ce/multi-agent-perception/det/nuscenes-devkit/python-sdk"
make $2

EOT
