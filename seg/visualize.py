import os
import os

for ii in range(6):
    os.system(f'source ./visualize.sh {ii} val')
    os.system(f'source ./visualize.sh {ii} test')
