#!/usr/bin/env bash

python ./ecs-cluster-cf-template.py > ecr-cluster-cf.template

awski cloudformation create-stack \
--stack-name staging-cluster \
--capabilities CAPABILITY_IAM \
--template-body file://ecr-cluster-cf.template \
--parameters \
ParameterKey=KeyPair,ParameterValue=EffectiveDevOpsAws \
ParameterKey=VpcId,ParameterValue=vpc-aa07c7c1 \
ParameterKey=PublicSubnet,ParameterValue=subnet-6f5aa804\\,subnet-43a3850f\\,subnet-4d03ac36
