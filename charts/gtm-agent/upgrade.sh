#!/bin/bash

export $(cat .env | grep -v ^# | xargs) && envsubst < ./values.yml > values.gen.yml

helm upgrade gtm-agents -f ./values.gen.yml .
