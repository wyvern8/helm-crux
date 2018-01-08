#!/bin/bash

# https://hub.kubeapps.com/charts/stable/jenkins

helm install --name jenkins stable/jenkins | tee jenkins.out
