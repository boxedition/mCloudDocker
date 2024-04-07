#############Execute docker install script#############
sudo apt-get update
chmod 700 /root/docker-install.sh #Dar permissões de executar
/root/docker-install.sh >> /root/docker-install.log # og do Processo de instalação
mv /root/docker-install.sh /root/docker-install.sh.executed #Evita correr o script novamente