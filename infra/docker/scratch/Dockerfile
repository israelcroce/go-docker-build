#Dockerfile

# A partir de qual imagem iremos construir o container
FROM scratch

# Isso copiará todos os arquivos desta pasta('/infra/docker/ci') para o diretorio raiz('/') do container 
COPY . .

# Informamos ao docker o que vai ser executado
CMD [ "/go-docker-build" ]