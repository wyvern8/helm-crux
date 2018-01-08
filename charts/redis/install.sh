#!/bin/bash

helm install --name redis stable/redis | tee redis.out
