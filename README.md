#  Projeto
Para facilitar o processo as imagens docker já estão disponiveis no [Doker Hub][docekr-hub-id] então caso queira prossiga para o step Deploy no kubernetes

# Ferramentas para subir o projeto no kubernetes
- kubectl (https://kubernetes.io/docs/tasks/tools/)
- helm (https://helm.sh/docs/intro/install/)
- k9s (https://k9scli.io/) (opcional)

# Build do projeto ipaas-log-app
Para realizar ou construir é necessário possuir o Java 11 instalado.
```bash
cd ./ipaas-log-app/
```
Alterar os arquivos abaixo para um novo repository caso não queira utilizar as imagens já existentes.
```bash
./build-docker.sh&&./publish-image.sh
```

# Build do projeto caller-app
```bash
cd ./caller-app/
```
Alterar os arquivos abaixo para um novo repository caso não queira utilizar as imagens já existentes.
```bash
./build-docker.sh&&./publish-image.sh
```

# Deploy no kubernetes
```bash
cd ./kubernetes/
```
```bash
./create.sh
```

[docekr-hub-id]: https://hub.docker.com/u/luangazin "Docker Hub repository"
