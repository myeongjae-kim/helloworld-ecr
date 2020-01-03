#!/usr/bin/env bash

python 6-helloworld-codepipeline-cf-template.py > 6-helloworld-codepipeline-cf.template

aws cloudformation create-stack \
--stack-name helloworld-codepipeline \
--capabilities CAPABILITY_NAMED_IAM \
--template-body file://6-helloworld-codepipeline-cf.template