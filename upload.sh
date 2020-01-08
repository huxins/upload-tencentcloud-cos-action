#!/bin/sh

set -eux

pip install coscmd

coscmd config -a $INPUT_SECRET_ID -s $INPUT_SECRET_KEY -b $INPUT_BUCKETNAME_APPID -r $INPUT_REGION

coscmd upload $INPUT_LOCALPATH $INPUT_COSPATH