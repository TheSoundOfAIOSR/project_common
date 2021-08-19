import sys

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

if((sys.version_info[0] != 3) or(sys.version_info[1] != 8)):
    print(sys.version)
    print(bcolors.FAIL +  "!!!! ERROR !!!! : python version mismatch, please use version 3.8" + bcolors.ENDC)
    sys.exit(1)
else:
    sys.exit(0)
