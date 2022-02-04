import os

for ii in range(4):
    os.system(f'sbatch create_data.sh {ii} {ii} 0 40')
    os.system(f'sbatch create_data.sh {ii} {ii} 40 80')


os.system('sbatch create_data.sh 4 5 0 40')
os.system('sbatch create_data.sh 4 5 40 80')

