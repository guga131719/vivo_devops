#!/bin/bash

# Iniciar Minikube (caso ainda não esteja iniciado)
minikube start --cpus 2

# Configurar o contexto do kubectl para apontar para o Minikube
kubectl config use-context minikube

docker build -t projeto-vivo-img:latest .


echo " 1 Implantacao configmap.yaml"
kubectl apply -f  ci/configmap.yaml

echo " 2 Implantacao deployment.yaml"
kubectl apply -f  ci/deployment.yaml

echo " 3 Implantacao service.yaml"
kubectl apply -f  ci/service.yaml

echo " 4 Implantacao gateway.yaml"
kubectl apply -f  ci/gateway.yaml

echo " 5 Implantacao virtualservice.yaml"
kubectl apply -f  ci/virtualservice.yaml

echo "6 Implantacao ingress.yaml"
kubectl apply -f  ci/ingress.yaml

# Imprimir a URL da aplicação com Istio
MINIKUBE_IP=$(minikube ip)
echo "Ip $(minikube ip)"
echo "Aplicação implantada. Acesse: http://projeto-vivo.com:3000"


