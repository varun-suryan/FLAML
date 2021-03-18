export SCREENDIR=$HOME/.screen
screen -Sdm credit-xgb-CFO-0 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d credit -r 0
sleep 10s
screen -Sdm credit-xgb-CFO-1 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d credit -r 1
sleep 10s
screen -Sdm credit-xgb-CFO-2 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d credit -r 2
sleep 10s
screen -Sdm credit-xgb-CFO-3 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d credit -r 3
sleep 10s
screen -Sdm credit-xgb-CFO-4 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d credit -r 4
sleep 10s

screen -Sdm credit-xgb-BlendSearch-0 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d credit -r 0
sleep 10s
screen -Sdm credit-xgb-BlendSearch-1 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d credit -r 1
sleep 10s
screen -Sdm credit-xgb-BlendSearch-2 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d credit -r 2
sleep 10s
screen -Sdm credit-xgb-BlendSearch-3 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d credit -r 3
sleep 10s
screen -Sdm credit-xgb-BlendSearch-4 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d credit -r 4
sleep 10s

screen -Sdm credit-xgb-Optuna-0 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d credit -r 0
sleep 10s
screen -Sdm credit-xgb-Optuna-1 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d credit -r 1
sleep 10s
screen -Sdm credit-xgb-Optuna-2 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d credit -r 2
sleep 10s
screen -Sdm credit-xgb-Optuna-3 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d credit -r 3
sleep 10s
screen -Sdm credit-xgb-Optuna-4 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d credit -r 4
sleep 10s

screen -Sdm KDDCup09-xgb-CFO-0 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d KDDCup09 -r 0
sleep 10s
screen -Sdm KDDCup09-xgb-CFO-1 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d KDDCup09 -r 1
sleep 10s
screen -Sdm KDDCup09-xgb-CFO-2 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d KDDCup09 -r 2
sleep 10s
screen -Sdm KDDCup09-xgb-CFO-3 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d KDDCup09 -r 3
sleep 10s
screen -Sdm KDDCup09-xgb-CFO-4 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d KDDCup09 -r 4
sleep 10s

screen -Sdm KDDCup09-xgb-BlendSearch-0 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d KDDCup09 -r 0
sleep 10s
screen -Sdm KDDCup09-xgb-BlendSearch-1 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d KDDCup09 -r 1
sleep 10s
screen -Sdm KDDCup09-xgb-BlendSearch-2 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d KDDCup09 -r 2
sleep 10s
screen -Sdm KDDCup09-xgb-BlendSearch-3 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d KDDCup09 -r 3
sleep 10s
screen -Sdm KDDCup09-xgb-BlendSearch-4 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d KDDCup09 -r 4
sleep 10s

screen -Sdm KDDCup09-xgb-Optuna-0 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d KDDCup09 -r 0
sleep 10s
screen -Sdm KDDCup09-xgb-Optuna-1 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d KDDCup09 -r 1
sleep 10s
screen -Sdm KDDCup09-xgb-Optuna-2 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d KDDCup09 -r 2
sleep 10s
screen -Sdm KDDCup09-xgb-Optuna-3 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d KDDCup09 -r 3
sleep 10s
screen -Sdm KDDCup09-xgb-Optuna-4 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d KDDCup09 -r 4
sleep 10s

screen -Sdm volkert-xgb-CFO-0 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d volkert -r 0
sleep 10s
screen -Sdm volkert-xgb-CFO-1 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d volkert -r 1
sleep 10s
screen -Sdm volkert-xgb-CFO-2 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d volkert -r 2
sleep 10s
screen -Sdm volkert-xgb-CFO-3 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d volkert -r 3
sleep 10s
screen -Sdm volkert-xgb-CFO-4 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'CFO' -l xgb_cat -d volkert -r 4
sleep 10s

screen -Sdm volkert-xgb-BlendSearch-0 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d volkert -r 0
sleep 10s
screen -Sdm volkert-xgb-BlendSearch-1 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d volkert -r 1
sleep 10s
screen -Sdm volkert-xgb-BlendSearch-2 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d volkert -r 2
sleep 10s
screen -Sdm volkert-xgb-BlendSearch-3 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d volkert -r 3
sleep 10s
screen -Sdm volkert-xgb-BlendSearch-4 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'BlendSearch+Optuna' -l xgb_cat -d volkert -r 4
sleep 10s

screen -Sdm volkert-xgb-Optuna-0 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d volkert -r 0
sleep 10s
screen -Sdm volkert-xgb-Optuna-1 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d volkert -r 1
sleep 10s
screen -Sdm volkert-xgb-Optuna-2 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d volkert -r 2
sleep 10s
screen -Sdm volkert-xgb-Optuna-3 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d volkert -r 3
sleep 10s
screen -Sdm volkert-xgb-Optuna-4 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m 'Optuna' -l xgb_cat -d volkert -r 4
sleep 10s

# screen -Sdm volkert python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m BlendSearch+Optuna Optuna CFO  -l xgb_cat -d volkert -r 0 1 2 3 4 -plot_only -agg
# screen -Sdm KDDCup09 python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m BlendSearch+Optuna Optuna CFO  -l xgb_cat -d KDDCup09 -r 0 1 2 3 4 -plot_only -agg
# screen -Sdm credit python test/test_automl_exp.py  -t 300 -trial_pu 1  -total_pu 1  -m BlendSearch+Optuna Optuna CFO  -l xgb_cat -d credit -r 0 1 2 3 4 -plot_only -agg