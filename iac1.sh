#!/bin/bash

echo "criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd manuela -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd flaviaadm -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd tereza -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_ADM

useradd marcelo -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd gabriela -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd eduarda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd eduardo -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd mauro -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd iranilda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
