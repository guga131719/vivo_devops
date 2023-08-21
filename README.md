# Aplicacao Teste vivo Devops 

Esta é uma aplicação simples que responde "Olá gustavo". Para implantar a aplicação no Minikube localmente, siga os passos abaixo:

1. Certifique-se de que você tenha o **Minikube, Docker  e Istio** instalado e configurado corretamente.

    1.1 Verificar se o Minikube está instalado:
    Abra um terminal e execute o seguinte comando:

    ```bash
    minikube version
    ```

    Se a versão do Minikube for exibida, isso indica que o Minikube está instalado corretamente.

    Se não iniciar os comandos e steps abaixos
    Instale os pré-requisitos necessários (como o virtualizador e o kubectl). Você pode usar os seguintes comandos:
    
    ```bash
    sudo apt-get update
    sudo apt-get install virtualbox kubectl
    ```

    Instale o Minikube utilizando o gerenciador de pacotes curl:
    
    ```bash
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    ```

    Iniciando o Minikube

    Se o Minikube não estiver em execução, você pode iniciá-lo executando:

    ```bash
    minikube start
    ```
    Aguarde até que o cluster seja iniciado. Isso pode levar alguns minutos.
    Verificando o Status do Cluster

    Após a inicialização do Minikube, você pode verificar o status do cluster com o seguinte comando:

    ```bash
    minikube status
    ```
    Isso fornecerá informações sobre o estado atual do cluster, incluindo a versão do Kubernetes em execução.
    Obtendo as Configurações do kubectl

    O kubectl é a ferramenta de linha de comando utilizada para interagir com o cluster Kubernetes. Você precisa das configurações do Minikube para que o kubectl possa se conectar ao cluster corretamente. Execute o comando abaixo:

    ```bash
    minikube kubectl -- get po -A
    ```
    Se você visualizar uma lista de pods, isso indica que o kubectl está configurado corretamente para trabalhar com o Minikube.


    1.2 Verificar se o Docker está instalado:
    Abra um terminal e execute o seguinte comando para verificar se o Docker já está instalado:
   
    ```bash
    docker --version
     ```

    Se não estiver realizar os passos abaixo
    ```bash
        #Siga os passos abaixo para instalar o Docker em seu sistema.
        # Passo 1: Atualize o banco de dados de pacotes
        sudo apt-get update

        # Passo 2: Instale os pacotes necessários
        sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

        # Passo 3: Adicione a chave GPG oficial do Docker
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

        # Passo 4: Adicione o repositório Docker ao sistema
        echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

        # Passo 5: Atualize novamente o banco de dados de pacotes
        sudo apt-get update

        # Passo 6: Instale o Docker Engine
        sudo apt-get install docker-ce docker-ce-cli containerd.io

        # Passo 7: Verifique se o Docker foi instalado corretamente
        sudo docker --version            
    ```

    1.3 Verificar se o Istio está instalado:
    Abra um terminal e execute o seguinte comando para verificar se o Istio já está instalado:
   
    ```bash
    istioctl version
    ```
    Se não estiver realizar os passos abaixo
    ```bash
        # Nome do Projeto
        Descrição curta do projeto.

        ## Instalação do Istio

        Siga os passos abaixo para instalar o Istio em seu sistema.

        ```bash
        # Passo 1: Baixe o Istio
        curl -L https://istio.io/downloadIstio | sh -

        # Passo 2: Navegue para o diretório Istio
        cd istio-*

        # Passo 3: Adicione o diretório bin do Istio ao PATH
        export PATH=$PWD/bin:$PATH

        # Passo 4: Instale o Istio no cluster Kubernetes (por exemplo, Minikube)
        istioctl install --set profile=default

        # Passo 5: Verifique se o Istio foi instalado corretamente
        istioctl version
    ```
     
2. Execute o script de deploy:
    ```bash
    ./deploy.sh
    ```

3. Acesse a aplicação:
- Abra o navegador e vá para http://projeto-vivo.com

A aplicação responderá com "Olá gustavo".