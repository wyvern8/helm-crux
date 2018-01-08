#!/bin/bash

# https://hub.kubeapps.com/charts/stable/redis

helm install --name redis stable/redis | tee redis.out
