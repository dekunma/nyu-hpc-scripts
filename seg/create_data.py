import os

# for ii in range(6):
#     os.system(f'sbatch create_data.sh {ii} {ii} 1 2')
#     os.system(f'sbatch create_data.sh {ii} {ii} 3 4')
#     os.system(f'sbatch create_data.sh {ii} {ii} 4 5')


os.system(f'sbatch create_data.sh 0 0 85 90')