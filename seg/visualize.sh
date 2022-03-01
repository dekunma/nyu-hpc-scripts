#!/bin/bash
echo make visualize agent_idx=$1 split=$2

sbatch <<EOT
#!/bin/bash
#SBATCH --cpus-per-task=4                
#SBATCH --time=4:00:00                  
#SBATCH --mem=32GB
#SBATCH --job-name=v_$1_$2

cd /scratch/dm4524/ai4ce/multi-agent-perception/seg/
source /scratch/dm4524/env.sh
export PYTHONPATH="${PYTHONPATH}:/scratch/dm4524/ai4ce/multi-agent-perception/det/nuscenes-devkit/python-sdk"
make visualize agent_idx=$1 split=$2
EOT