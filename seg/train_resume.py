import os

logs_base = 'logs8'

tasks = (
    # ('l', 'train_bound_resume bound=lowerbound resume_epoch_num=89'),
    # ('l_nc', 'train_lowerbound_nc'),
    # ('u', 'train_bound_resume bound=upperbound resume_epoch_num=89'),
    # ('u_nc', 'train_upperbound_nc'),
    # ('v', 'train_resume com=V2V resume_epoch_num=66'),
    #('v_nc', 'train_resume_nc com=V2V resume_epoch_num=82'),
    #('w', 'train_resume com=when2com resume_epoch_num=88'),
    # ('w_nc', 'train_resume_nc com=when2com resume_epoch_num=60'),
    # ('ww', 'train_warp_resume com=when2com resume_epoch_num=65'),
    # ('ww_nc', 'train_nc_warp_resume com=when2com resume_epoch_num=85'),
    ('d', f'train_disco_resume com=disco resume_epoch_num=92 logs_base={logs_base}'),
    # ('d_nc', f'train_disco_resume_nc com=disco resume_epoch_num=80 logs_base={logs_base}'),
)

for t in tasks:
    os.system(f'source ./train_resume.sh {t[0]} \'{t[1]}\'')
