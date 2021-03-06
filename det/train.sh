#!/bin/bash
sbatch <<EOT
#!/bin/bash
#SBATCH --cpus-per-task=4              
#SBATCH --time=41:00:00                 
#SBATCH --mem=70GB
#SBATCH --job-name=d_$1
#SBATCH --output=results/train/d_$1.out
#SBATCH --gres=gpu:rtx8000:1

cd /scratch/dm4524/ai4ce/multi-agent-perception/det/
source /scratch/dm4524/env.sh
export PYTHONPATH="${PYTHONPATH}:/scratch/dm4524/ai4ce/multi-agent-perception/det/nuscenes-devkit/python-sdk"
make $2
EOT