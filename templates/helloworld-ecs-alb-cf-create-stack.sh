#!/usr/bin/env bash

python hello-world-ecs-alb-cf-template.py > hello-world-ecs-alb-cf.template

aws cloudformation create-stack \
--stack-name staging-alb-helloworld \
--capabilities CAPABILITY_IAM \
--template-body file://helloworld-ecs-alb-cf.template