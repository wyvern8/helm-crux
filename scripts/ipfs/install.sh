#!/bin/bash

# https://hub.kubeapps.com/charts/stable/ipfs

helm install --name ipfs stable/ipfs | tee ipfs.out
