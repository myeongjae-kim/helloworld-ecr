#!/usr/bin/env bash

python 3-helloworld-ecs-alb-cf-template.py > 3-helloworld-ecs-alb-cf.template

aws cloudformation create-stack \
--stack-name staging-alb-helloworld \
--capabilities CAPABILITY_IAM \
--template-body file://3-helloworld-ecs-alb-cf.template

aws cloudformation update-stack \
--stack-name staging-alb-helloworld \
--capabilities CAPABILITY_IAM \
--template-body file://3-helloworld-ecs-alb-cf.template

aws cloudformation create-stack \
--stack-name production-alb-helloworld \
--capabilities CAPABILITY_IAM \
--template-body file://3-helloworld-ecs-alb-cf.template

aws cloudformation update-stack \
--stack-name production-alb-helloworld \
--capabilities CAPABILITY_IAM \
--template-body file://3-helloworld-ecs-alb-cf.template