#!/bin/bash

BAUD=115200
PORT=$(echo $(pio device list) | awk '{print $1}')
FILENAME="firmware.bin"

REMOTENAME='air';  	# default remote
REMOTEPATH='~/Marlin';  # default path to marlin

PATH_TO_BIN='.pio/build/BIGTREE_SKR_2/firmware.bin';

if [ "$1" ]; then REMOTENAME=$1; fi
if [ "$2" ]; then REMOTEPATH=$2; fi

# special rules
if [[ "$REMOTENAME" == "mbp" ]]; then REMOTEPATH='~/Documents/Projects/Marlin'; fi

# clean 
rm ./firmware.bin
ssh $REMOTENAME "rm $REMOTEPATH/$PATH_TO_BIN"

# remote build
sed -E "s#Marlin#$REMOTEPATH#" _run_on_remote.sh | ssh $REMOTENAME '$SHELL -l'
scp "$REMOTENAME:$REMOTEPATH/$PATH_TO_BIN" ./

../skr_uploader/upload.py $PORT $BAUD $FILENAME
