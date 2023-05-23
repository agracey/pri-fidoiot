#!/bin/bash

kubectl apply -n fido -f yaml/manufacturer/configmap.yaml
kubectl apply -n fido -f yaml/manufacturer/deployment.yaml
kubectl apply -n fido -f yaml/manufacturer/service.yaml
kubectl apply -n fido -f yaml/manufacturer/ingress.yaml

kubectl apply -n fido -f yaml/owner/configmap.yaml
kubectl apply -n fido -f yaml/owner/deployment.yaml
kubectl apply -n fido -f yaml/owner/service.yaml
kubectl apply -n fido -f yaml/owner/ingress.yaml

kubectl apply -n fido -f yaml/reseller/configmap.yaml
kubectl apply -n fido -f yaml/reseller/deployment.yaml
kubectl apply -n fido -f yaml/reseller/service.yaml
kubectl apply -n fido -f yaml/reseller/ingress.yaml

kubectl apply -n fido -f yaml/rv/configmap.yaml
kubectl apply -n fido -f yaml/rv/deployment.yaml
kubectl apply -n fido -f yaml/rv/service.yaml
kubectl apply -n fido -f yaml/rv/ingress.yaml