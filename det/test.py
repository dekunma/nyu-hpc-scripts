import os

log_base = 'logs'
tasks = (
    ('l', f'test_bound bound=lowerbound log_base={log_base}'),
    ('l_nc', f'test_bound_nc bound=lowerbound log_base={log_base}'),
    ('u', f'test_bound bound=upperbound log_base={log_base}'),
    ('u_nc', f'test_bound_nc bound=upperbound log_base={log_base}'),
    ('v', f'test com=v2v log_base={log_base}'),
    ('v_nc', f'test_nc com=v2v log_base={log_base}'),
    ('w', f'test_w2c log_base={log_base}'),
    ('w_nc', f'test_w2c_nc log_base={log_base}'),
    ('ww', f'test_warp log_base={log_base}'),
    ('ww_nc', f'test_warp_nc log_base={log_base}'),
    ('w2', f'test_who2com log_base={log_base}'),
    ('w2_nc', f'test_who2com_nc log_base={log_base}'),
    ('ww2', f'test_warp_who log_base={log_base}'),
    ('ww2_nc', f'test_warp_who_nc log_base={log_base}'),
    ('d', f'test com=disco log_base={log_base}'),
    ('d_nc', f'test_nc com=disco log_base={log_base}'),
)

for t in tasks:
    os.system(f'source ./test.sh {t[0]} \'{t[1]}\'')