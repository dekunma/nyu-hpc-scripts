#!/bin/bash
echo make $2

sbatch <<EOT
#!/bin/bash
#SBATCH --cpus-per-task=4              
#SBATCH --time=41:00:00                 
#SBATCH --mem=16GB
#SBATCH --job-name=s_$1_8
#SBATCH --gres=gpu:rtx8000:1
#SBATCH --output=results/train8/s_$1.out

cd /scratch/dm4524/ai4ce/multi-agent-perception/seg/
source /scratch/dm4524/env.sh
export PYTHONPATH="${PYTHONPATH}:/scratch/dm4524/ai4ce/multi-agent-perception/det/nuscenes-devkit/python-sdk"
make $2
EOT