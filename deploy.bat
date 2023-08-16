@echo off

docker build -t projeto-vivo-img:latest .
docker run -p 3000:3000 -d projeto-vivo-img:latest


kubectl apply -f  ci/deployment.yaml
kubectl apply -f  ci/service.yaml
kubectl apply -f  ci/ingress.yaml
kubectl apply -f  ci/configmap.yaml

echo Aplicacao implantada acessar essa url para testar http://projeto-vivo.com:3000/