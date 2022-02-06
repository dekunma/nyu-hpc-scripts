import os

tasks = (
    # ('l', 'train_bound_resume bound=lowerbound resume_epoch_num=89'),
    # ('l_nc', 'train_lowerbound_nc'),
    # ('u', 'train_bound_resume bound=upperbound resume_epoch_num=89'),
    # ('u_nc', 'train_upperbound_nc'),
    ('v', 'train_resume com=V2V resume_epoch_num=33'),
    ('v_nc', 'train_nc com=V2V resume_epoch_num=42'),
    # ('w', 'train com=when2com'),
    # ('w_nc', 'train_nc com=when2com'),
    # ('ww', 'train_warp com=when2com'),
    # ('ww_nc', 'train_nc_warp com=when2com')
)

for t in tasks:
    os.system(f'source ./train_resume.sh {t[0]} \'{t[1]}\'')
