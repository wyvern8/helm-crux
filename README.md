# helm-crux
kubernetes helm charts for experimentation, in particular in conjunction with https://github.com/wyvern8/github-task-manager

assumes you have a configured k8s cluster and kubectl env.

install helm: https://github.com/kubernetes/helm/blob/master/docs/install.md

custom charts are in charts dir along with commands for 3rd party chart deployments.

## install gtm-agent with nginx and lets-encrypt https

Please bear in mind that this is purely for experimentation.  You would normally run your agents in a restricted vpc.

1. set `values.yml` for scripts/kube-lego in particular, the sample enables nginx ingress controller support and production cert issuing.  => run `./install.sh`

2. run `./install.sh` in scripts/nginx-ingress to install the ingress controller

3. set the generated gce loadbalancer ip to static, and setup gce dns related to the domains you plan to use, ie replace: gtm.your.domain.com

4. in charts/gtm-agent, create a `.env` file based on https://github.com/wyvern8/github-task-manager

5. in charts/gtm-agent, copy `values-sample.yml` as `values.yml` and update gtm.your.domain.com entries. => run `./install.sh`

Keep an eye on progress of each step in gke console and/or using kubectl.

## uninstall gtm-agent experiment

 - use `helm list` to see list of releases and use `helm delete --purge [release]` for each.  confirm that all gke/gce assets are cleaned up

 - blow away the k8s cluster and any gce resources created manually

 - make sure you release any static ips no longer allocated or you will be charged for them.


**All of this is no warranty and you take responsibility for any costs incurred.**
