#!/bin/bash

echo "Iniciando a execução do Script v1.01..."
echo "..."
echo "**********************************************"
echo "Grupos a serem usados!"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "**********************************************"
echo "Diretórios a serem usados!"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "**********************************************"
echo "Adicionar diretórios aos respectivos grupos!"
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/
echo "**********************************************"
echo "Usuários GRP_ADM"
useradd carlos -c "Carlos Eduardo" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Santana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "Joao Santana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "**********************************************"
echo "Usuários GRP_VEN"
useradd debora -c "Debora Santana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Santana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto Santana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "**********************************************"
echo "Usuários GRP_SEC"
useradd josefina -c "Josefina Santana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda Santana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Santana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "**********************************************"
echo "Alterar permissões dos diretórios!"
chmod 777 /publico/
chmod 750 /adm/
chmod 750 /ven/
chmod 750 /sec/
chmod 700 /home/carlos/
chmod 700 /home/maria/
chmod 700 /home/joao/
chmod 700 /home/debora/
chmod 700 /home/sebastiana/
chmod 700 /home/roberto/
chmod 700 /home/josefina/
chmod 700 /home/amanda/
chmod 700 /home/rogerio/
echo "Fim da execução do Script!"
