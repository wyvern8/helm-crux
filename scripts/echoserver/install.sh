#!/bin/bash

# https://hub.kubeapps.com/charts/stable/redis

helm install --name echoserver gcr.io/google_containers/echoserver:1.4 | tee echoserver.out
