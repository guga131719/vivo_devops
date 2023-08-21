# Aplicacao Teste vivo Devops 

Esta é uma aplicação simples que responde "Olá gustavo". Para implantar a aplicação no Minikube localmente, siga os passos abaixo:

1. Certifique-se de que você tenha o Minikube instalado e configurado corretamente.
Verificando a Instalação do Minikube

Certifique-se de que o Minikube está instalado. Abra um terminal e execute o seguinte comando:

```bash
# Comando para verificar se o existe o minikube instalado

minikube version
```

Se a versão do Minikube for exibida, isso indica que o Minikube está instalado corretamente.
Iniciando o Minikube

Se o Minikube não estiver em execução, você pode iniciá-lo executando:

```bash

minikube start

Aguarde até que o cluster seja iniciado. Isso pode levar alguns minutos.
Verificando o Status do Cluster

Após a inicialização do Minikube, você pode verificar o status do cluster com o seguinte comando:

```bash

minikube status

Isso fornecerá informações sobre o estado atual do cluster, incluindo a versão do Kubernetes em execução.
Obtendo as Configurações do kubectl

O kubectl é a ferramenta de linha de comando utilizada para interagir com o cluster Kubernetes. Você precisa das configurações do Minikube para que o kubectl possa se conectar ao cluster corretamente. Execute o comando abaixo:

bash

minikube kubectl -- get po -A

Se você visualizar uma lista de pods, isso indica que o kubectl está configurado corretamente para trabalhar com o Minikube.

2. Execute o script de deploy:
./deploy.sh

3. Acesse a aplicação:
- Abra o navegador e vá para http://projeto-vivo.com

A aplicação responderá com "Olá gustavo".