import os

tasks = (
    ('l', 'train_lowerbound'),
    ('l_nc', 'train_lowerbound_nc'),
    ('u', 'train_upperbound'),
    ('u_nc', 'train_upperbound_nc'),
    ('v', 'train com=v2v'),
    ('v_nc', 'train_nc com=v2v'),
    ('w', 'train com=when2com'),
    ('w_nc', 'train_nc com=when2com'),
    ('ww', 'train_warp com=when2com'),
    ('ww_nc', 'train_nc_warp com=when2com')
)

for t in tasks:
    os.system(f'source ./train.sh {t[0]} {t[1]}')
