
import numpy as np
import matplotlib.pyplot as plt
import itertools
import re
import logging
from .config import LOG_DIR, PLOT_DIR, MAIN_RES_LOG_DIR, WARMSTART_NUM,\
    ICML_DATASET_10NS, AB_RES_LOG_DIR, ORACLE_RANDOM_SEED,\
    FONT_size_label, FONT_size_stick_label, CSFONT, LEGEND_properties
from .chacha_config import FINAL_METHOD_alias,\
    FINAL_METHOD_alias_key_list, FINAL_METHOD_color, \
    FINAL_METHOD_line, FINAL_METHOD_marker, FINAL_METHOD_hatch
from datetime import datetime
from csv import DictReader
logger = logging.getLogger(__name__)


def get_ns_feature_dim_from_vw_example(vw_examples):
    ns_feature_dim = {}
    vw_e = vw_examples[0]
    data = vw_e.split('|')
    for i in range(1, len(data)):
        logger.debug('name space feature dimension%s', data)
        if ':' in data[i]:
            xx = data[i].split(' ')
            print(xx, data[i])
            ns = xx[0]
            feature = xx[1:]
            # ns, feature = data[i].split(' ')
            # feature_dim = len(feature.split(':'))-1
            feature_dim = len(feature)
        else:
            data_split = data[i].split(' ')
            ns = data_split[0]
            feature_dim = len(data_split) - 1
            if len(data_split[-1]) == 0: feature_dim -= 1
        if len(ns) == 1:
            ns_feature_dim[ns] = feature_dim
    logger.debug('name space feature dimension%s', ns_feature_dim)
    return ns_feature_dim


def to_vw_format(line):
    chars = re.escape(string.punctuation)
    res = f'{int(line.y)} |'
    for idx, value in line.drop(['y']).iteritems():
        feature_name = re.sub(r'([' + chars + ']|\s)+', '_', idx)
        res += f' {feature_name}:{value}'
    return res


def get_y_from_vw_example(vw_example):
    """ get y from a vw_example. this works for regression dataset
    """
    return float(vw_example.split('|')[0])


# def csv_to_vw(loc_csv, loc_output, train=True):
#     """Munges a CSV file (loc_csv) to a VW file (loc_output).
#          Set "train" to False when munging a test set.
#     TODO: Too slow for a daily cron job. Try optimize, Pandas or Go.
#     """
#     start = datetime.now()
#     print("\nTurning %s into %s. Is_train_set? %s" % (loc_csv,loc_output,train))
  
#     with open(loc_output,"wb") as outfile:
#         for e, row in enumerate( DictReader(open(loc_csv)) ):
        
#         #Creating the features
#         numerical_features = ""
#         categorical_features = ""
#         for k,v in row.items():
#             if k not in ["Label","Id"]:
#             if "I" in k: # numerical feature, example: I5
#                 if len(str(v)) > 0: #check for empty values
#                 numerical_features += " %s:%s" % (k,v)
#             if "C" in k: # categorical feature, example: C2
#                 if len(str(v)) > 0:
#                 categorical_features += " %s" % v
                
#         #Creating the labels		  
#         if train: #we care about labels
#             if row['Label'] == "1":
#             label = 1
#             else:
#             label = -1 #we set negative label to -1
#             outfile.write( "%s '%s |i%s |c%s\n" % (label,row['Id'],numerical_features,categorical_features) )
            
#         else: #we dont care about labels
#             outfile.write( "1 '%s |i%s |c%s\n" % (row['Id'],numerical_features,categorical_features) )
        
#         #Reporting progress
#         if e % 1000000 == 0:
#             print("%s\t%s"%(e, str(datetime.now() - start)))

#     print("\n %s Task execution time:\n\t%s"%(e, str(datetime.now() - start)))

