#!/bin/sh
bucketname=$1
if [ $# = 2 ]; then
  profile="--profile ${2}"
  responsefile="response.yaml"
elif [ $# = 3 ]; then
  responsefile=$2
else
  responsefile=response.yaml
  profile=""
fi

aws cloudformation package --template-file parent.yaml --s3-bucket $bucketname --output-template-file $responsefile $profile