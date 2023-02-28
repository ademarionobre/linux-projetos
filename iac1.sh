#!/bin/bash

echo "Criar diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criar grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criar usuários"

useradd kallyana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd almir -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd rita -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd luiz -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd aldecir -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd lucas -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd mateus -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd francisco -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Atribuindo permissões aos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim do scritp"
