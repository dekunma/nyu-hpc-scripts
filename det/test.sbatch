#!/bin/bash
#!/bin/bash
#SBATCH --cpus-per-task=2    
#SBATCH --time=10:00:00                 
#SBATCH --mem=32GB
#SBATCH --job-name=d_t
#SBATCH --output=results/test/d_t.out

cd /scratch/dm4524/ai4ce/multi-agent-perception/det/
source /scratch/dm4524/env.sh
export PYTHONPATH="${PYTHONPATH}:/scratch/dm4524/ai4ce/multi-agent-perception/det/nuscenes-devkit/python-sdk"
make test_bound