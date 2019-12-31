#!/usr/bin/env bash

python ecr-repository-cf-template.py > ecr-repository-cf.template

aws cloudformation create-stack \
--stack-name helloworld-ecr \
--capabilities CAPABILITY_IAM \
--template-body file://ecr-repository-cf.template \
--parameters \
ParameterKey=RepoName,ParameterValue=helloworld
