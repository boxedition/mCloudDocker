# Projeto Base

"Dockerize" do seguinte projeto:

https://github.com/boxedition/devSmart

## Instalação dentro de GCP

Clonar projeto do repositório e aceda à pasta

```sh
git clone https://github.com/boxedition/mCloudDocker
cd mCloudDocker/
```

Criar um .env

```sh
cp .env.example .env
```

Modificar o valor do TUNNEL_TOKEN com o valor do token fornecido pela Cloudflare

```sh
nano .env
```

Criar a Stack de containers

```sh
docker compose up -d
```

##### Nota:

> Link para aceder à instância do Google Cloud Plataform:
> https://cloud.boxdev.site/
>
> A contrução das imagens encontra-se dentro do https://github.com/boxedition/devSmart
>
> > Dockerfile.api: Container com o serviço php
>
> > Dockerfile.database: Container com serviço MySQL
