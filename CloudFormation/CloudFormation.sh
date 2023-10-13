#!/bin/bash

CFN_STACK_NAME=VPC-test
CFN_TEMPLATE=file://vpc.yaml

aws cloudformation create-stack --stack-name ${CFN_STACK_NAME} --template-body ${CFN_TEMPLATE}