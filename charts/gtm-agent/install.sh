#!/bin/bash

export $(cat .env | grep -v ^# | xargs) && envsubst < ./values.yml > values.gen.yml

helm install --name gtm-agents -f ./values.gen.yml .
