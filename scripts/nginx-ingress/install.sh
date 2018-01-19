#!/bin/bash

# https://hub.kubeapps.com/charts/stable/nginx-ingress

helm install --name nginx-ingress stable/nginx-ingress | tee nginx-ingress.out
