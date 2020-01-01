#!/usr/bin/env bash

python helloworld-codepipeline-cf-template.py > helloworld-codepipeline-cf.template

awsecr cloudformation create-stack \
--stack-name helloworld-codepipeline \
--capabilities CAPABILITY_NAMED_IAM \
--template-body file://helloworld-codepipeline-cf.template