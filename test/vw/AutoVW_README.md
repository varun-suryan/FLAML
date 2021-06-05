# Environment requirements


# Commmand line to run exp
## Nosetests
nosetests test/test_autovw.py:TestAutoVW --nocapture

## Rerun an exp
python -m  test.vw.run_autovw  final_icml 100k_1_5 -m ChaCha  Vanilla   -seed 0  -rerun  -log -d oml_41506_10
python -m  test.vw.run_autovw  final_icml 100k_1_5 -m ChaCha  Vanilla   -seed 0  -rerun  -log -d oml__42183_10

## Plot results 
python -m  test.vw.run_autovw  final_icml 100k_1_5 -m ChaCha  Vanilla   -seed 0  -p  -log -d oml_41506_10
python -m  test.vw.run_autovw  final_icml 100k_1_5 -m ChaCha  Vanilla   -seed 0  -p  -log -d oml__42183_10
