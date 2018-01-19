#!/bin/bash

# https://hub.kubeapps.com/charts/stable/jenkins

helm install --name jenkins -f ./values.yml stable/jenkins | tee jenkins.out