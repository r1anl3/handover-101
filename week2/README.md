# Week 2

## Kubernetes Architecture

![](https://kubernetes.io/images/docs/kubernetes-cluster-architecture.svg)

Control plane:

- [kube-api-server](https://kubernetes.io/docs/concepts/architecture/#kube-apiserver)
- [etcd](https://kubernetes.io/docs/concepts/architecture/#etcd)
- [kube-scheduler](https://kubernetes.io/docs/concepts/architecture/#kube-scheduler)
- [kube-control-manager](https://kubernetes.io/docs/concepts/architecture/#kube-controller-manager)
- [cloud-control-manager](https://kubernetes.io/docs/concepts/architecture/#cloud-controller-manager)

Node:

- [kubelet](https://kubernetes.io/docs/concepts/architecture/#kubelet)
- [kube-proxy](https://kubernetes.io/docs/concepts/architecture/#kube-proxy)
- [Container Runtime Interface (CRI)](https://github.com/kubernetes/community/blob/master/contributors/devel/sig-node/container-runtime-interface.md)

## Azure Kubernetes Service (AKS) Concepts

### Cluster components

![](https://learn.microsoft.com/en-us/azure/aks/media/concepts-clusters-workloads/control-plane-and-nodes.png)

### Nodes

![](https://learn.microsoft.com/en-us/azure/aks/media/concepts-clusters-workloads/aks-node-resource-interactions.png)

- [VM size and image](https://learn.microsoft.com/en-us/azure/aks/media/concepts-clusters-workloads/aks-node-resource-interactions.png)
- [OS disks](https://learn.microsoft.com/en-us/azure/aks/core-aks-concepts#os-disks)
- [Resource reservations](https://learn.microsoft.com/en-us/azure/aks/core-aks-concepts#resource-reservations)
- [OS](https://learn.microsoft.com/en-us/azure/aks/core-aks-concepts#os)
- [Container runtime](https://learn.microsoft.com/en-us/azure/aks/core-aks-concepts#container-runtime)
- [Node pools](https://learn.microsoft.com/en-us/azure/aks/core-aks-concepts#node-pools)
- [Node resouce group](https://learn.microsoft.com/en-us/azure/aks/core-aks-concepts#node-resource-group)
- [Namespaces](https://learn.microsoft.com/en-us/azure/aks/core-aks-concepts#namespaces)
