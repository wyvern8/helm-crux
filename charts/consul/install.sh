#!/bin/bash

# https://hub.kubeapps.com/charts/stable/consul

helm install --name redis stable/consul | tee consul.out
