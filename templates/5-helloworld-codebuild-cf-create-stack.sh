#!/usr/bin/env bash

python 5-helloworld-codebuild-cf-template.py > 5-helloworld-codebuild-cf.template

aws cloudformation create-stack \
--stack-name helloworld-codebuild \
--capabilities CAPABILITY_IAM \
--template-body file://5-helloworld-codebuild-cf.template