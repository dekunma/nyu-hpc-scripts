#!/bin/bash
sbatch <<EOT
#!/bin/bash
#SBATCH --cpus-per-task=4                # uses 2 compute cores per task
#SBATCH --time=3:00:00                  # for one hour
#SBATCH --mem=16GB
#SBATCH --job-name=s_$1_$3
#SBATCH --output=results/create_$1_$3.out

cd /scratch/dm4524/ai4ce/multi-agent-perception/seg/
source /scratch/dm4524/env.sh
export PYTHONPATH="${PYTHONPATH}:/scratch/dm4524/ai4ce/multi-agent-perception/det/nuscenes-devkit/python-sdk"
make create_data from_agent=$1 to_agent=$2 scene_start=$3 scene_end=$4
EOT



