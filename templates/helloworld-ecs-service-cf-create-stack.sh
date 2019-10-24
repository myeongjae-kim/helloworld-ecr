#!/usr/bin/env bash

python helloworld-ecs-service-cf-template.py > helloworld-ecs-service-cf.template

aws cloudformation create-stack \
--stack-name staging-helloworld-service \
--capabilities CAPABILITY_IAM \
--template-body file://helloworld-ecs-service-cf.template \
--parameters \
ParameterKey=Tag,ParameterValue=latest