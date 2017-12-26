#!/bin/bash

for dir in `ls ./charts`; do
  helm lint ./charts/$dir
  if [ $? != 0 ]; then
    echo "$dir $?"
  fi
done

# Check YAML styling
yamllint -c .yamllint.yml .travis.yml .yamllint.yml
yamllint -c .yamllint.yml $(find . -type f -name "Chart.yaml")
yamllint -c .yamllint.yml $(find . -type f -name "values.yaml")
