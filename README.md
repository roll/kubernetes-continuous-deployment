# kubernetes-continuous-deployment

[WIP]

## Prepare a simple app

```bash
npm run test
npm run dev
```

## Setup Google Cloud

> https://cloud.google.com/docs/

- create `<project-name>` project at https://console.cloud.google.com/
- create `kubernetes-continuous-deployment` cluster at https://console.cloud.google.com/kubernetes/

## Setup Kubernetes

> https://kubernetes.io/docs/tasks/tools/install-kubectl/

## Setup Helm

> https://docs.helm.sh/using_helm/#quickstart-guide

```bash
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
```
