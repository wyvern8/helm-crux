#!/bin/bash

# https://hub.kubeapps.com/charts/stable/consul

helm install --name consul stable/consul | tee consul.out
