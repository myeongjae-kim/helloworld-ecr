#!/usr/bin/env bash

python hello-world-ecs-alb-cf-template.py > hello-world-ecs-alb-cf.template

aws cloudformation create-stack \
--stack-name staging-alb \
--capabilities CAPABILITY_IAM \
--template-body file://hello-world-ecs-alb-cf.template