# Environment requirements


# Commmand line to run exp
## Rerun an exp
python test/vw/run_autovw.py  final_icml 100k_1_5 -m ChaCha  Vanilla   -seed 0  -rerun -log -d oml_41506_10
## Plot results 
python test/vw/run_autovw.py  final_icml 100k_1_5 -m ChaCha  Vanilla   -seed 0  -p -log -d oml_41506_10
python test/vw/run_autovw.py  final_icml 100k_1_5 -m ChaCha  Vanilla   -seed 0  -p  -log -d oml_42183_10

python -m  test.vw.run_autovw  final_icml 100k_1_5 -m ChaCha  Vanilla   -seed 0  -p  -log -d oml_42183_10
python -m  test.vw.run_autovw  final_icml 100k_1_5_ns+lr -m ChaCha  Vanilla   -seed 0  -rerun  -log -d oml_42183_10


# nosetests test/test_automl.py:TestAutoML.test_custom_learner
# nosetests test/test_autovw.py:TestAutoVW.test_vw_oml_problem
# nosetests test/test_autovw.py:TestAutoVW.test_supervised_vw_tune_namespace
# nosetests test/test_autovw.py:TestAutoVW.test_vw_oml_problem 
# nosetests test/test_autovw.py:TestAutoVW.test_supervised_vw_tune_namespace  --nocapture

