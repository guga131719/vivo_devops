@echo off

kubectl apply -f ../ci/deployment.yaml
kubectl apply -f ../ci/service.yaml
kubectl apply -f ../ci/ingress.yaml
kubectl apply -f ../ci/configmap.yaml

echo Aplicacao implantada