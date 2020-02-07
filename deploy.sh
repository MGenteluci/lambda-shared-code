#!/bin/bash

function die {
    declare MSG="$@"
    echo -e "$0: Error: $MSG">&2
    exit 1
}

env="$1"
[ -z "$env" ] && die "Enviroment cannot be empty"

./build.sh || die "Build failed"

aws cloudformation package --template-file template.yaml --s3-bucket matheus-genteluci-bucket \
    --output-template-file template-output.yaml --profile $env || die 'Packing failed'

aws cloudformation deploy --template-file template-output.yaml \
    --stack-name heroes-service-$env --capabilities CAPABILITY_IAM --parameter-overrides AliasName=$env --profile $env || die 'Deploy failed'
