# Projeto Base

"Dockerize" do seguinte projeto:

https://github.com/boxedition/devSmart

## Instalação dentro de GCP

Instalar Docker (debian): https://docs.docker.com/engine/install/debian/#install-using-the-repository

```sh
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

```sh
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

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
sudo docker compose up -d
```

Seed database (opcional)

```sh
sudo docker compose exec api sh
```

```sh
php artisan migrate:fresh --seed
```

#### Notas:

> Link para aceder à instância do Google Cloud Plataform:
> https://cloud.boxdev.site/
>
> A contrução das imagens encontra-se dentro do https://github.com/boxedition/devSmart
>
> > Dockerfile.api: Container com o serviço php
>
> > Dockerfile.database: Container com serviço MySQL
>
> AWS S3 Bucket adicinado
