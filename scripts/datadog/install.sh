#!/bin/bash

# https://hub.kubeapps.com/charts/stable/ipfs

helm install --name datadog --set datadog.apiKey=$DATADOG_API_KEY stable/datadog | tee datadog.out
