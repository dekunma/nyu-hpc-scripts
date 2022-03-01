import os

for ii in range(6):
    os.system(f'sbatch create_data.sh {ii} {ii} 80 85')
    os.system(f'sbatch create_data.sh {ii} {ii} 85 90')
    os.system(f'sbatch create_data.sh {ii} {ii} 90 95')
    os.system(f'sbatch create_data.sh {ii} {ii} 95 100')

