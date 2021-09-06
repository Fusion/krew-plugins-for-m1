# Krew Plugins for M1 Macs

## What is this?

This repository is used to build and publish Kubectl Krew plugins that will run on Mac M1 models.

Note that not all plugins are available. This can be for one of several reasons:
- A plugin is already available in the correct format in the Krew database
- It is already available, albeit outside the Krew database (usually through `brew`)
- It is broken, likely on all platforms
- It has severe, hard to work around, incompatibilities with ARM64
- It is not very popular, so I did not include it (yet)

At this time, only one package needs a bit of preparation, **kubect-dfi**:
1. remove go.sum
2. remove the lintci line from go.mod
3. running `go mod tidy`

Note that you do not have to build the modules yourself (this would somewhat defeat the purpose) and are encouraged to download them from the releases page instead.

Of course, feel free to build them anyway if you do not trust everything that comes in binary form from random corners of the web :)

## Current Plugins list

|Plugins|Description|
|-|-|
|[ktunnel](https://github.com/omrikiei/ktunnel)|Ktunnel is a CLI tool that establishes a reverse tunnel between a kubernetes cluster and your local machine.|
|[kubectl-ciliium](https://github.com/bmcustodio/kubectl-cilium)|A kubectl plugin for interacting with Cilium.|
|[kubectl-df-pv](https://github.com/yashbhutwala/kubectl-df-pv)|Show disk usage (like unix df) for persistent volumes.|
|[kubectl-dfi](https://github.com/makocchi-git/kubectl-dfi)|List and show disk resources of images on Kubernetes nodes.|
|[kubectl-graph](https://github.com/steveteuber/kubectl-graph)|A kubectl plugin to visualize Kubernetes resources and relationships.|
|[kubectl-iexec](https://github.com/gabeduke/kubectl-iexec)|Kubectl plugin to interactively exec into a pod.|
|[kubectl-ipick](https://github.com/similarweb/kubectl-ipick)|A kubectl wrapper for interactive resource selection.|
|[kubectl-modify-secret](https://github.com/rajatjindal/kubectl-modify-secret)|kubectl-modify-secrets allows user to directly modify secrets.|
|[kubectl-pod-dive](https://github.com/caiobegotti/Pod-Dive)|A kubectl plugin to dive into your Kubernetes nodes pods, and inspect them.|
|[kubectl-resources](https://github.com/howardjohn/kubectl-resources)|Plugin to access Kubernetes resource requests, limits, and usage.|
|[kubectl-kubesec](https://github.com/controlplaneio/kubectl-kubesec)|Security risk analysis for Kubernetes resources kubesec.io.|
|[ksniff](https://github.com/eldadru/ksniff)|Kubectl plugin to ease sniffing on kubernetes pods using tcpdump and wireshark.|
|[kubectl-terminate](https://github.com/xcoulon/kubectl-terminate)|kubectl-terminate, a kubectl plugin to remove finalizers and finally delete k8s resources.|
|[kubectl-trace](https://github.com/iovisor/kubectl-trace)|Schedule bpftrace programs on your kubernetes cluster using kubectl.|
|[kubectl-tree](https://github.com/ahmetb/kubectl-tree)|A kubectl plugin to browse Kubernetes object hierarchies as a tree.|
|[kubctl-view-webhook](https://github.com/Trendyol/kubectl-view-webhook)|Visualize your webhook configurations.|
|[kubectl-who-can](https://github.com/aquasecurity/kubectl-who-can)|Show who has RBAC permissions to perform actions on different resources in Kubernetes.|
|[kubepug](https://github.com/rikatz/kubepug)|Kubernetes PreUpGrade (Checker).|
|[kubectl preflight](https://github.com/replicatedhq/troubleshoot)|Preflight Checks and Support Bundles Framework for Kubernetes Applications troubleshoot.sh.|
