import os

for ii in range(6):
    os.system(f'sbatch create_data.sh {ii} {ii} 90 100')
