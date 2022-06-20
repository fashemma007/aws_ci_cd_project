#!/usr/bin/env bash

IFS="-" read -r UDAPEOPLE SIDE MID <<< $(echo $(aws cloudformation list-stacks --query "StackSummaries[*].StackName" --stack-status-filter CREATE_COMPLETE --no-paginate --output text) | awk  '{print $1}')
echo ${MID}
