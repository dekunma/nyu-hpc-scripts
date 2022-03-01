#!/bin/bash
sbatch <<EOT
#!/bin/bash
#SBATCH --account=yl7516 
#SBATCH --partition=n1c12m76-v100-1 
#SBATCH --gres=gpu 
#SBATCH --time=24:00:00
#SBATCH --requeue

# cd /scratch/dm4524/ai4ce/multi-agent-perception/det/
# source /scratch/dm4524/env.sh
# export PYTHONPATH="${PYTHONPATH}:/scratch/dm4524/ai4ce/multi-agent-perception/det/nuscenes-devkit/python-sdk"
# make $2


singularity exec \
    --overlay overlay-50G-10M.ext3 \
    --overlay /scratch/dm4524/data/V2X-Sim-det.sqf \
    /scratch/work/public/singularity/cuda11.3.0-cudnn8-devel-ubuntu20.04.sif /bin/bash -c "source /ext3/env.sh; python torch-test.py"


EOT
