#!/bin/bash
sbatch <<EOT
#!/bin/bash
#SBATCH --cpus-per-task=4              
#SBATCH --time=21:00:00                 
#SBATCH --mem=16GB
#SBATCH --job-name=s_$1
#SBATCH --output=results/train/s_$1.out
#SBATCH --gres=gpu:rtx8000:1

cd /scratch/dm4524/ai4ce/multi-agent-perception/seg/
source /scratch/dm4524/env.sh
export PYTHONPATH="${PYTHONPATH}:/scratch/dm4524/ai4ce/multi-agent-perception/det/nuscenes-devkit/python-sdk"
make $2
EOT



