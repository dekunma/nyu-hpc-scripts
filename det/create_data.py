import os

for ii in range(6):
    os.system(f'sbatch create_data.sh {ii} {ii} 0 20')
    os.system(f'sbatch create_data.sh {ii} {ii} 20 40')
    os.system(f'sbatch create_data.sh {ii} {ii} 40 80')

