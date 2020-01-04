#!/usr/bin/env bash

python 1-ecr-repository-cf-template.py > 1-ecr-repository-cf.template

aws cloudformation create-stack \
--stack-name helloworld-ecr \
--capabilities CAPABILITY_IAM \
--template-body file://ecr-repository-cf.template \
--parameters \
ParameterKey=RepoName,ParameterValue=helloworld
