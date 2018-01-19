#!/bin/bash

# https://hub.kubeapps.com/charts/stable/kube-lego

helm install --name kube-lego -f ./values.yml stable/kube-lego
