#!/bin/bash

helm install --name redis stable/consul | tee consul.out
