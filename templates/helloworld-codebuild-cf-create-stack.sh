#!/usr/bin/env bash

python helloworld-codebuild-cf-template.py > helloworld-codebuild-cf.template

aws cloudformation update-stack \
--stack-name helloworld-codebuild \
--capabilities CAPABILITY_IAM \
--template-body file://helloworld-codebuild-cf.template