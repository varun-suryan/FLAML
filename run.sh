
# #***********ICML rebuttal scripts***********
# ##Illustration of concept drift 
# python test/test_concept_drift.py  -i 100000  -policy_budget 5 -d 41539  -m  naive ChaCha-Org Offline  -log   -show_plot

# ##Add learning rate tuning
# python test/test_concept_drift.py  -i 100000  -policy_budget 5 -d 41506  -m  naive ChaCha-Org ChaCha-L  -log   -show_plot


# EXP Running 
python test/vw/run_autovw.py   final  100k_1_5  -log   -m  ChaCha -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5  -log   -m ChaCha_pause_old  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5  -log   -m ChaCha_wo_champion  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5  -log   -m ChaCha_aggressive  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5  -log   -m ChaCha_aggressive  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5  -log   -m ChaCha_wo_champion_aggressive  -seed 0 1 2 3 4 -rerun

# torun

python test/vw/run_autovw.py   final  10k_1_5  -log   -m ChaCha_wo_champion_aggressive ChaCha -seed 1 -rerun -d oml_5648_10

# PLOT script

python test/vw/run_autovw.py   final  100k_1_5  -log   -m ChaCha_aggressive ChaCha_wo_champion ChaCha_wo_champion_aggressive ChaCha_pause_old  ChaCha Exhaustive Random Vanilla -seed 0 1 2 3 4 -p  -a

ython test/vw/run_autovw.py   final  100k_1_5  -log   -m ChaCha_pause_old  ChaCha Exhaustive Random Vanilla ChaCha_wo_champion ChaCha_aggressive -seed 0 1 2 3 4 -p  -a

python test/vw/run_autovw.py   final_test  100k_1_5  -log   -m ChaCha  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final_test  100k_1_5  -log   -m ChaCha_pause_old  -seed 0 1 2 3 4 -rerun

python test/vw/run_autovw.py   final_test  100k_1_5  -log   -m ChaCha  -seed 3 -rerun -d oml_1203_10

# test
python test/vw/run_autovw.py   final  10k_1_5  -log   -m  ChaCha Random Vanilla -seed 1 -rerun -d oml_5648_10

python test/vw/run_autovw.py   final  50k_1_5_ns+lr  -log   -m  ChaCha Random Vanilla -seed 1 -rerun -d oml_5648_10
python test/vw/run_autovw.py   final  50k_1_5_ns+lr  -log   -m  ChaCha -seed 1 -rerun -d oml_5648_10

10k_1_5_ns+lr 
 
python test/vw/run_autovw.py   final_test  100k_1_5_ns+lr   -log   -m  Vanilla -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final_test  100k_1_5_ns+lr   -log   -m  Exhaustive -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final_test  100k_1_5_ns+lr   -log   -m  Random -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final_test  100k_1_5_ns+lr   -log   -m  ChaCha -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5_ns+lr   -log   -m ChaCha_pause_old  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5_ns+lr   -log   -m ChaCha_wo_champion  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5_ns+lr   -log   -m ChaCha_aggressive  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5_ns+lr   -log   -m ChaCha_aggressive  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final  100k_1_5_ns+lr   -log   -m ChaCha_wo_champion_aggressive  -seed 0 1 2 3 4 -rerun
python test/vw/run_autovw.py   final_test  100k_1_5_ns+lr   -log   -m  ChaCha Exhaustive Random Vanilla -seed 0 1 2 3 4 -p -a

python test/vw/run_autovw.py   final  100k_1_5_ns+lr   -log   -m  Vanilla Random ChaCha -seed 0 1 2 3 4 -rerun

python test/vw/run_autovw.py   final  100k_1_5_ns+lr   -log   -m  Vanilla Random ChaCha -seed 0 -p 

python test/vw/run_autovw.py   final  100k_1_5  -log   -m ChaCha_aggressive ChaCha_wo_champion ChaCha_pause_old ChaCha_wo_champion_aggressive  ChaCha Exhaustive Random Vanilla -seed 0 1 2 3 4 -p  -a



python test/vw/run_autovw.py   final_test  100k_1_5  -log   -m  ChaCha Exhaustive Random Vanilla -seed 0 1 2 3 4 -p  -a

python test/vw/run_autovw.py   final_test  100k_1_5_ns+lr  -log   -m  ChaCha Exhaustive Random Vanilla -seed 0 1 2 3 4 -p  -a

python test/vw/run_autovw.py   final_test  100k_1_5  -log   -m  Exhaustive -seed 0 -rerun -d oml_201_10
python test/vw/run_autovw.py   final_test  100k_1_5  -log   -m  ChaCha Exhaustive Random Vanilla -seed 0 1 2 3 4 -p -d oml_1203_10


python test/vw/run_autovw.py   final_test  50k_1_5  -log   -m  ChaCha Random Vanilla -seed 0 1 2  -rerun -d oml_5648_10
python test/vw/run_autovw.py   final_test  50k_1_5_ns+lr  -log   -m  ChaCha Random Vanilla -seed 0 1 2  -rerun -d oml_5648_10

python test/vw/run_autovw.py   final_test  50k_1_5_ns+lr  -log   -m  ChaCha Random Vanilla -seed 0 1 2  -rerun -d oml_5648_10


python make_sh.py  final_test -e 100k_1_5 -m ChaCha Random Vanilla Exhaustive -seed 0 1 2 3 4  -rerun -d oml_201_10 -log -filename run_201.sh
python make_sh.py  final_test -e 100k_1_5 -m ChaCha Random Vanilla Exhaustive -seed 0 1 2 3 4  -rerun -d oml_42729_10 -log  -filename run_42729.sh
python make_sh.py  final_test -e 100k_1_5 -m ChaCha Random Vanilla Exhaustive -seed 0 1 2 3 4  -rerun -d oml_1199_10 -log  -filename run_1199.sh

python make_sh.py  final_test -e 100k_1_5 -m ChaCha ChaCha_pause_old ChaCha_remove ChaCha_cb01 ChaCha_cb001 ChaCha_cb003  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha.sh

python make_sh.py  final_test -e 100k_1_5 -m ChaCha_001remove ChaCha_pauseremove ChaCha_001pauseremove  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_remove.sh

python make_sh.py  final_test -e 100k_1_5 -m  Random Vanilla Exhaustive  -seed 0 1 2 3 4  -rerun -log  -filename run_baselines.sh -m oml_1199_10 oml_42183

python test/vw/run_autovw.py  final_test  100k_1_5 -m ChaCha ChaCha_pause_old ChaCha_remove ChaCha_cb01 ChaCha_cb001 ChaCha_cb003 Vanilla Random  -seed 0 1 2 3 4  -p -log 
python test/vw/run_autovw.py  final_test  100k_1_5 -m ChaCha ChaCha_pause_old ChaCha_remove  ChaCha_cb001  ChaCha_001remove ChaCha_pauseremove ChaCha_001pauseremove Vanilla Random  -seed 0 1 2 3 4  -p -log
python test/vw/run_autovw.py  final_test  100k_1_5 -m ChaCha ChaCha_pause_old ChaCha_remove  ChaCha_cb001  ChaCha_cb01 ChaCha_cb001 ChaCha_cb003  ChaCha_001remove ChaCha_pauseremove ChaCha_001pauseremove Vanilla Random  Exhaustive -seed 0 1 2 3 4  -p -log -a

python test/vw/run_autovw.py  final_test  100k_1_5 -m  Exhaustive -seed 0 -rerun -log 
python test/vw/run_autovw.py  final_test  100k_1_5 -m  Exhaustive -seed 1 -rerun -log -d oml_344_10

python test/vw/run_autovw.py   final_test  100k_1_5 -m ChaCha Random Vanilla Exhaustive -seed 0 1 2 3 4  -d oml_201_10 -p -log

python test/vw/run_autovw.py   final_test  100k_1_5 -m ChaCha Random Vanilla Exhaustive -seed 0 1 2 3 4  -d oml_42729_10 -p -log


python test/vw/run_autovw.py   final_test  100k_1_5 -m ChaCha Random Vanilla Exhaustive -seed 0 1 2 3 4  -d oml_1199_10 -p -log

python make_sh.py  final_test -e 100k_1_5_ns+lr -m ChaCha ChaCha_pause_old ChaCha_remove -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_nslr_0.sh

python make_sh.py  final_test -e 100k_1_5_ns+lr -m ChaCha_001remove ChaCha_pauseremove ChaCha_001pauseremove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_nslr.sh

python test/vw/run_autovw.py  final_test  100k_1_5_ns+lr -m ChaCha ChaCha_pause_old ChaCha_remove  ChaCha_cb001  ChaCha_cb01 ChaCha_cb001 ChaCha_cb003  ChaCha_001remove ChaCha_pauseremove ChaCha_001pauseremove Vanilla Random  Exhaustive -seed 0 1 2 3 4  -p -log -a

##EXP for ICML
### Main exp
python make_sh.py  final_icml -e 100k_1_5 -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_icml_ns.sh
python make_sh.py  final_icml -e 100k_1_5_ns+lr -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_icml_nsls.sh

python make_sh.py  final_icml_large -e 500k_1_5 -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_icml_ns_large.sh
python make_sh.py  final_icml_large -e 500k_1_5_ns+lr -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_icml_nsls_large.sh

python make_sh.py  final_icml_large -e 1000k_1_5 -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_icml_ns_1000k.sh
python make_sh.py  final_icml_large -e 1000k_1_5_ns+lr -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_icml_nsls_1000k.sh

## Ablation exp
python make_sh.py  final_icml -e 100k_1_5 -m ChaCha_aggressive ChaCha_wo_champion ChaCha_wo_champion_aggressive  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_icml_ablation.sh
bash run_chacha_icml_ablation.sh

python test/vw/run_autovw.py  final_icml 100k_1_5 -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -p -log  -a
python test/vw/run_autovw.py final_icml 100k_1_5_ns+lr -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -p -log  -a

python test/vw/run_autovw.py  final_icml_large  500k_1_5 -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -p -log  -a 
python test/vw/run_autovw.py  final_icml_large  500k_1_5_ns+lr -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -p -log  -a 
python test/vw/run_autovw.py  final_icml_large  1000k_1_5 -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -p -log  -a 
python test/vw/run_autovw.py  final_icml_large  1000k_1_5_ns+lr -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -p -log  -a 

python test/vw/run_plot.py normalized_scoresfinal_icml-100k_1_5-15-50511-23.json chacha_icml -m  ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random   
python test/vw/run_plot.py  normalized_scoresfinal_icml-100k_1_5_ns+lr-15-50511-23.json chacha_icml_nslr -m  ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random   


python test/vw/run_autovw.py  final_icml 100k_1_5 -m  ChaCha_aggressive ChaCha_wo_champion ChaCha_wo_champion_aggressive  ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -p -log  -a
# Final plot
python test/vw/run_plot.py normalized_scoresfinal_icml-100k_1_5-15-50514-07.json  chacha_icml -m  ChaCha_remove_100k_1_5  ChaCha  Random 
python test/vw/run_plot.py  normalized_scoresfinal_icml-100k_1_5_ns+lr-15-50515-14.json chacha_icml_nslr -m  ChaCha_remove_100k_1_5 Random  

normalized_scoresfinal_icml-100k_1_5_ns+lr-15-50515-14.json


# Ablation plot
python test/vw/run_plot.py normalized_scoresfinal_icml-100k_1_5-15-50514-07.json  chacha_icml_ablation -m  ChaCha_remove_100k_1_5  ChaCha_aggressive_100k_1_k ChaCha_wo_champion_aggressive_100k_1_k Random   
# generate plots

###ICML command lines
#figure 4 
python test/vw/run_plot.py normalized_scoresfinal_icml-100k_1_5-15-50514-07.json  chacha_icml -m  ChaCha_remove_100k_1_5   Random 
python test/vw/run_plot.py  normalized_scoresfinal_icml-100k_1_5_ns+lr-15-50515-14.json  chacha_icml_nslr -m ChaCha_remove_100k_1_5   Random 
#figure 5
python test/vw/run_plot.py normalized_scoresfinal_icml-100k_1_5-15-50514-07.json  chacha_icml_ablation -m  ChaCha_remove_100k_1_5  ChaCha_aggressive_100k_1_k ChaCha_wo_champion_aggressive_100k_1_k
#table 1
python test/vw/run_plot.py normalized_scoresfinal_icml-100k_1_5-15-50514-07.json  chacha_icml_all -m  ChaCha_remove_100k_1_5   Random ChaCha_aggressive_100k_1_k ChaCha_wo_champion_aggressive_100k_1_k
#table 2
python test/vw/run_plot.py  normalized_scoresfinal_icml-100k_1_5_ns+lr-15-50515-14.json  chacha_icml_nslr -m ChaCha_remove_100k_1_5   Random 

#figure 6
# python test/vw/run_plot.py normalized_scoresfinal_icml_large-500k_1_5-5-50515-14.json chacha_icml_500k -m  ChaCha_remove_500k_1_5 Random   
# python test/vw/run_plot.py normalized_scoresfinal_icml_large-500k_1_5_ns+lr-5-50515-18.json chacha_icml_500k_nslr -m  ChaCha_remove_500k_1_5 Random
python test/vw/run_plot.py normalized_scoresfinal_icml_large-1000k_1_5-5-50515-14.json chacha_icml_1000k -m  ChaCha_remove_1000k_1_5 Random   
python test/vw/run_plot.py normalized_scoresfinal_icml_large-1000k_1_5_ns+lr-5-50515-18.json chacha_icml_1000k_nslr -m  ChaCha_remove_1000k_1_5 Random

python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5  -m ChaCha_remove Random Vanilla Exhaustive -seed 0  -log -d oml_5648_10 -demo
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5  -m ChaCha_remove Random Vanilla Exhaustive -seed 0  -log -d oml_42183_10 -demo
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5  -m ChaCha_remove Random Vanilla Exhaustive -seed 0  -log -d oml_42183_10 -nonstationary
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5  -m ChaCha_remove  Vanilla Offline  -seed 0  -log -d oml_42183_10 

# Qualitative study
###non-stationary 42183

## Debug
python test/vw/run_autovw.py  final_icml 50k_1_5 -m  ChaCha_aggressive      -seed 0 -rerun -log -d oml_1206_10
python test/vw/run_autovw.py  final_icml 50k_1_5 -m   ChaCha_remove     -seed 0  -rerun -log -d oml_1206_10

python test/vw/run_autovw.py  final_icml 50k_1_5 -m   Vanilla   -seed 0  -rerun -log -d oml_1206_10


python test/vw/run_autovw.py  final_icml_large 100k_1_5 -m  ChaCha_aggressive  -seed 0 -rerun -log -d oml_1206_10
python test/vw/run_autovw.py  final_icml_large 100k_1_5 -m  Vanilla  -seed 0 -rerun -log -d oml_1206_10


python test/vw/run_autovw.py  final_icml 50k_1_5 -m  ChaCha_aggressive ChaCha_remove Vanilla   -seed 0  -p -log -d oml_1206_10
python test/vw/run_autovw.py  final_icml_large 1000k_1_5 -m  ChaCha_aggressive ChaCha_remove Vanilla -seed 0 -p -log -d oml_1206_10


## Demo

python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 1000k_1_5 1000k_1_5_ns+lr  -m ChaCha_remove Random Vanilla Exhaustive -seed 0 1 2 3 4  -log -d oml_5648_10
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5 100k_1_5_ns+lr  -m ChaCha_remove Random Vanilla Exhaustive -seed 0 1 2 3 4  -log -d oml_41506_10



python test/vw/run_autovw.py  final_icml 50k_1_5 -m ChaCha_remove Vanilla   -seed 0  -p -log -d oml_41506_10
# nonstationary 
# python test/vw/run_autovw.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5  -m Offline  -seed 0  -rerun  -log -d oml_42183_10
python test/vw/run_autovw.py  final_icml 100k_1_5 -m Offline  -seed 0 1 2 3 4  -p -log -d oml_42183_10
python test/vw/run_autovw.py  final_icml 100k_1_5 -m Offline  -seed 0 1 2 3 4  -rerun -log -d oml_42183_10
python test/vw/run_autovw.py  final_icml 100k_1_5 -m Offline  -seed 0 1 2 3 4  -rerun -p -d oml_42183_10 -m ChaCha  Vanilla Offline

python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5 100k_1_5_ns+lr  -m ChaCha_remove Random Vanilla Exhaustive -seed 0  -log -d oml_42183_10
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5 100k_1_5 -m ChaCha_remove Random Vanilla Exhaustive -seed 0  -log -d oml_42183_10
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5 -m  Offline -seed 0  -log -d oml_42183_10

python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5 -m Offline -seed 0  -log -d oml_42183_10
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5  -m ChaCha_remove Vanilla Offline -seed 0 1 2 3 4 -log -d oml_42183_10
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result/result_log/  -e 100k_1_5  -m ChaCha_remove Vanilla Offline -seed 0 1 -log -d oml_41539_10


python test/vw/run_autovw.py  final_icml 100k_1_5_ns+lr -m ChaCha ChaCha_remove Random Vanilla Exhaustive Offline  -seed 0 1 2 3 4   -log  -rerun -d oml_41539_10
python test/vw/run_autovw.py  final_icml 100k_1_5 -m Offline  -seed 0 1 2 3 4   -log  -rerun -d oml_41539_10

python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result/result_log/  -e 100k_1_5  -m ChaCha_remove Vanilla Offline -seed 4  -log -d oml_41539_10
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5  -m ChaCha_remove Vanilla Offline -seed 0 1 2 3 4 -log -d oml_42183_10


## Concept drift
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5  -m ChaCha_remove Vanilla Offline -seed 0  -log -d oml_42183_10  -demo_drift
python test/vw/run_plot_demo.py  final_icml test/vw/vw_benchmark/result_icml/  -e 100k_1_5  -m ChaCha_remove Vanilla Offline -seed 0  -log -d oml_42183_10  