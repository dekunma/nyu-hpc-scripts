import os

logs_base = 'logs8'

tasks = (
    # ('l', 'train_bound bound=lowerbound'),
    # ('l_nc', 'train_bound_nc bound=lowerbound'),
    # ('u', 'train_bound bound=upperbound'),
    # ('u_nc', 'train_bound_nc bound=upperbound'),
    # ('v', 'train com=V2V'),
    # ('v_nc', 'train_nc com=V2V'),
    # ('w', 'train com=when2com'),
    # ('w_nc', 'train_nc com=when2com'),
    # ('ww', 'train_warp com=when2com'),
    # ('ww_nc', 'train_nc_warp com=when2com')
    ('d', f'train_disco com=disco logs_base={logs_base}'),
    ('d_nc', f'train_disco_nc com=disco logs_base={logs_base}')
)

for t in tasks:
    os.system(f'source ./train.sh {t[0]} \'{t[1]}\'')
