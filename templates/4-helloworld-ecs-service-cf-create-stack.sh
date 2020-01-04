#!/usr/bin/env bash

python3 4-helloworld-ecs-service-cf-template.py > 4-helloworld-ecs-service-cf.template

aws cloudformation create-stack \
--stack-name staging-helloworld-service \
--capabilities CAPABILITY_IAM \
--template-body file://4-helloworld-ecs-service-cf.template \
--parameters \
ParameterKey=Tag,ParameterValue=latest

aws cloudformation update-stack \
--stack-name staging-helloworld-service \
--capabilities CAPABILITY_IAM \
--template-body file://4-helloworld-ecs-service-cf.template \
--parameters \
ParameterKey=Tag,ParameterValue=latest

aws cloudformation create-stack \
--stack-name production-helloworld-service \
--capabilities CAPABILITY_IAM \
--template-body file://4-helloworld-ecs-service-cf.template \
--parameters \
ParameterKey=Tag,ParameterValue=latest

aws cloudformation update-stack \
--stack-name production-helloworld-service \
--capabilities CAPABILITY_IAM \
--template-body file://4-helloworld-ecs-service-cf.template \
--parameters \
ParameterKey=Tag,ParameterValue=latest