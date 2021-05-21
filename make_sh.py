import argparse
STDOUT_DIR = './stdout/'
# example commmand line: python make_sh.py  final_icml -e 100k_1_5 -m ChaCha ChaCha_pauseremove ChaCha_pause_old ChaCha_remove Random Vanilla Exhaustive  -seed 0 1 2 3 4  -rerun -log  -filename run_chacha_icml_ns.sh

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('benchmark', type=str, nargs='?', default='final',
                        help="The benchmark type to run as defined by default \
                        in resources/benchmarks/{benchmark}.yaml")
    parser.add_argument('-e', '--exp_config_list', dest='exp_config_list', nargs='*',
                        default=[], help="The exp_config list")
    parser.add_argument('-m', '--method_list', dest='method_list', nargs='*',
                        default=[], help="The method list")
    parser.add_argument('-seed', '--seed_index', dest='seed_index', nargs='*', type=int,
                        default=[0], help="set config_oracle_random_seed seed_index")
    parser.add_argument('-rerun', '--force_rerun', action='store_true',
                        help='whether to force rerun.')
    parser.add_argument('-no_redirect', '--no_redirect', action='store_true')
    parser.add_argument('-d', '--dataset_list', metavar='dataset_list', nargs='*',
                        default=['all'], help="The specific dataset id (as defined in \
                        the benchmark file) to run. " "When an OpenML reference is \
                        used as benchmark, the dataset name should be used instead. "
                        "If not provided, all datasets from the benchmark will be run.")
    parser.add_argument('-shuffle', '--shuffle_data', action='store_true',
                        help='whether to force rerun.')
    parser.add_argument('-log', '--use_log', action='store_true',
                        help='whether to use_log.')
    parser.add_argument('-filename', '--file_name', metavar='file_name',  
                        default='run_exp.sh', help="result filename")

    args = parser.parse_args()
    additional_argument = ''
    argument_list = []
    f = open(args.file_name, 'w')
    # f.write('export SCREENDIR=$HOME/.screen')
    # no_redirect = args.no_redirect
    for exp_config in args.exp_config_list:
        for m in args.method_list:
            for s in args.seed_index:
                for d in args.dataset_list:
                    alias_prob = '-m ' + str(m) 
                    alias_seed = '-seed ' + str(s)
                    if d != 'all':
                        alias_data = '-d ' + str(d)
                    else:
                        alias_data = ''
                    alias_rerun = '-rerun' if args.force_rerun else ''
                    alias_shuffle = '-shuffle' if args.shuffle_data else ''
                    alias_log = '-log' if args.use_log else ''
                    alias_screen = '-'.join([str(m), str(s), str(args.benchmark),
                                            str(exp_config)])
                    argument_list = [str(args.benchmark), str(exp_config), alias_prob,
                                     alias_rerun, alias_seed, alias_shuffle, alias_log,
                                     additional_argument]
                    line_part1 = '\n' + 'screen -Sdm ' + alias_screen + ' ' + 'bash -c '
                    line_part2 = '"' + 'python test/vw/run_autovw.py ' \
                                 + ' '.join(argument_list) + '>' + STDOUT_DIR \
                                 + 'out_' + alias_screen + ' ' + '2>' + STDOUT_DIR \
                                 + 'err_' + alias_screen + '"'
                    if not args.no_redirect:
                        line = line_part1 + line_part2
                    else:
                        line = '\n' + 'screen -Sdm ' + alias_screen \
                            + ' ' + ' python test/vw/run_autovw.py' + ' '.join(argument_list)
                    f.write(line)
                    f.write('\n' + 'sleep 10s')
