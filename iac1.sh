#!/bin/bash

#criando diretorios
mkdir /publico /adm /ven /sec

#criando grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criando usuarios do grupo de adm e colocando em seu grupo
useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123) carlos
useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123) maria
useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123) joao

#criando usuarios do grupo de ven e colocando em seu grupo
useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123) debora
useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123) sebastiana
useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123) roberto

#criando usuarios do grupo de sec e colocando em seu grupo
useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123) josefina
useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123) amanda
useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123) rogerio

#adicionado os grupos aos diretorios 
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_VEN /sec

#ajustando as permissoes dos diretorios 
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec



