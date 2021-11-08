#!/bin/bash

clear
DATA=`date`
echo "###############$DATA###############"
echo "# adicionador de maquinas no sistema Nagios por terminal"
echo "# created by: Thomaz Alberto"
echo "#"
echo "# http://www.vivaolinux.com.br/"
echo "#"

#"L1" define o local onde esta o arquivo a ser incrementado
L1="/usr/local/nagios/etc/objects/windows.cfg"
LINE="######################$DATA###############################"
LINE2="####################################################"
LIN=" "
# LONG é o escopo da rede, ex: do IP de uma maquina 10.2.0.45, o escopo seria "10.2.0."
LONG="192.168.0."
#echo "Esta estação está ligada a qual aparelho switch?"
#definição da linha parents
#read PAR
echo "$LIN"
echo "$LIN"
echo "$LIN"
echo "Digite o nome da máquina para cadastrar no Nagios"
read NOME
echo "Descreva a máquina a ser adicionada"
read ALIAS
echo "Digite o final do IP da máquina na rede"
read IP

echo "confirma adição da estação $NOME , $ALIAS com o IP de número $LONG$IP ao Nagios? (<enter> confirma, ctrl+c pra cancelar/sair)"
read "enter"

echo "$LIN" >> "$L1"
echo "$LIN" >> "$L1"
echo "$LINE" >> "$L1"
echo "$LINE2" >> "$L1"
echo "$LINE2" >> "$L1"
echo "define host{" >> "$L1"
echo "   use windows-server">> "$L1"
echo "  host_name $NOME"  >> "$L1"
echo "  alias $ALIAS" >> "$L1"
echo "  address $LONG$IP" >> "$L1"
#echo " parents $PAR" >> "$L1"
echo "}" >> "$L1"

#Nestas linhas seguintes você definirá qual serviço vai monitorar, nesse caso, se na maquina do cliente tiver instalado corretamente o nsclient++

echo "define service{" >> "$L1"
echo "  use generic-service" >> "$L1"
echo "  host_name $NOME"  >> "$L1"
echo "  service_description NSClient++  Version" >> "$L1"
echo "  check_command check_nt!CLIENTVERSION" >> "$L1"
echo "}" >> "$L1"


echo "$LINE2"
echo "Inicializando o serviço Nagios"
echo "$LINE2"
/etc/init.d/nagios reload
echo "$LINE2"
echo "Nagios reiniciado"
echo "$LINE2"
echo ""
echo "Aperte <enter> para adicionar outra máquina e Ctrl+c pra cancelar/sair"
read "enter"
sh add-to-nagios.sh
