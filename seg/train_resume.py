import os

tasks = (
    # ('l', 'train_bound_resume bound=lowerbound resume_epoch_num=89'),
    # ('l_nc', 'train_lowerbound_nc'),
    # ('u', 'train_bound_resume bound=upperbound resume_epoch_num=89'),
    # ('u_nc', 'train_upperbound_nc'),
    # ('v', 'train_resume com=V2V resume_epoch_num=99'),
    ('v_nc', 'train_resume_nc com=V2V resume_epoch_num=48'),
    ('w', 'train_resume com=when2com resume_epoch_num=52'),
    ('w_nc', 'train_resume_nc com=when2com resume_epoch_num=60'),
    ('ww', 'train_warp_resume com=when2com resume_epoch_num=38'),
    ('ww_nc', 'train_nc_warp_resume com=when2com resume_epoch_num=50')
)

for t in tasks:
    os.system(f'source ./train_resume.sh {t[0]} \'{t[1]}\'')
