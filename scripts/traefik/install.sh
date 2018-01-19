#!/bin/bash

# https://hub.kubeapps.com/charts/stable/traefik

helm install --name traefik -f values.yml --namespace kube-system stable/traefik | tee traefik.out
