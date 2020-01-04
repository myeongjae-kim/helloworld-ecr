#!/usr/bin/env bash

python ./2-ecs-cluster-cf-template.py > 2-ecs-cluster-cf.template

aws cloudformation create-stack \
--stack-name staging-cluster \
--capabilities CAPABILITY_IAM \
--template-body file://2-ecs-cluster-cf.template \
--parameters \
ParameterKey=KeyPair,ParameterValue=EffectiveDevOpsAWS \
ParameterKey=VpcId,ParameterValue=vpc-d84b50b0 \
ParameterKey=PublicSubnet,ParameterValue=subnet-7105c00a\\,subnet-50552c1c\\,subnet-69170201

aws cloudformation update-stack \
--stack-name staging-cluster \
--capabilities CAPABILITY_IAM \
--template-body file://2-ecs-cluster-cf.template \
--parameters \
ParameterKey=KeyPair,ParameterValue=EffectiveDevOpsAWS \
ParameterKey=VpcId,ParameterValue=vpc-d84b50b0 \
ParameterKey=PublicSubnet,ParameterValue=subnet-7105c00a\\,subnet-50552c1c\\,subnet-69170201

aws cloudformation create-stack \
--stack-name production-cluster \
--capabilities CAPABILITY_IAM \
--template-body file://2-ecs-cluster-cf.template \
--parameters \
ParameterKey=KeyPair,ParameterValue=EffectiveDevOpsAWS \
ParameterKey=VpcId,ParameterValue=vpc-d84b50b0 \
ParameterKey=PublicSubnet,ParameterValue=subnet-7105c00a\\,subnet-50552c1c\\,subnet-69170201

aws cloudformation update-stack \
--stack-name production-cluster \
--capabilities CAPABILITY_IAM \
--template-body file://2-ecs-cluster-cf.template \
--parameters \
ParameterKey=KeyPair,ParameterValue=EffectiveDevOpsAWS \
ParameterKey=VpcId,ParameterValue=vpc-d84b50b0 \
ParameterKey=PublicSubnet,ParameterValue=subnet-7105c00a\\,subnet-50552c1c\\,subnet-69170201
