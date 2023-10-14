#!/bin/bash

CFN_STACK_NAME=VPC-test
CFN_TEMPLATE=file://vpc.yaml

if [ "$1" == "new" ]; then
    echo "create-stack"
    aws cloudformation create-stack --stack-name ${CFN_STACK_NAME} --template-body ${CFN_TEMPLATE}
elif [ "$1" == "del" ]; then
    echo "delete-stack"
    aws cloudformation delete-stack --stack-name ${CFN_STACK_NAME}
else
    echo "create-change-set"
    aws cloudformation create-change-set --stack-name ${CFN_STACK_NAME} --change-set-name ${CFN_STACK_NAME} --template-body ${CFN_TEMPLATE}
fi