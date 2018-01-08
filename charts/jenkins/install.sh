#!/bin/bash

helm install --name jenkins -f ./values.yaml stable/jenkins | tee jenkins.out
