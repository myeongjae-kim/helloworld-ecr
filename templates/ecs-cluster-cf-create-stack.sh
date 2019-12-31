#!/usr/bin/env bash

python ./ecs-cluster-cf-template.py > ecr-cluster-cf.template

aws cloudformation create-stack \
--stack-name staging-cluster \
--capabilities CAPABILITY_IAM \
--template-body file://ecr-cluster-cf.template \
--parameters \
ParameterKey=KeyPair,ParameterValue=EffectiveDevOpsAWS \
ParameterKey=VpcId,ParameterValue=vpc-d84b50b0 \
ParameterKey=PublicSubnet,ParameterValue=subnet-7105c00a\\,subnet-50552c1c\\,subnet-69170201
