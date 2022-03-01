#!/bin/bash
sbatch <<EOT
#!/bin/bash
#SBATCH --cpus-per-task=2
#SBATCH --time=2:00:00
#SBATCH --mem=16GB
#SBATCH --job-name=s_$1_$3
#SBATCH --output=results/create/create_$1_$3.out

cd /scratch/dm4524/ai4ce/multi-agent-perception/seg/
source /scratch/dm4524/env.sh
export PYTHONPATH="${PYTHONPATH}:/scratch/dm4524/ai4ce/multi-agent-perception/det/nuscenes-devkit/python-sdk"
make create_data split=test from_agent=$1 to_agent=$2 scene_start=$3 scene_end=$4
EOT



