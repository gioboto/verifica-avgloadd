#!/bin/bash
#
#script verificamemoria.sh
# Version : 1.0
#Para verificar carga de un servidor y ejecutar una accion
#Autor : Ing. Jorge Navarrete
#mail : jorge_n@web.de
#Fecha : 2020-09-12


#===========================================================================
PATH=/bin:/usr/bin:/usr/sbin/
#===========================================================================
BASECARGA=1
CARGA=`uptime | awk '{print $10 * 1}' | cut -d. -f1`

if  (($CARGA > $BASECARGA)); then
#/etc/init.d/uwsgi-ra restart >> /dev/null
#echo holai
        TOKEN="569774679:AAEl8uSwPNDzHwM_MCCR1-iXi4C6zLGeoqU"
        ID="152054272"
        IDPablo="839199511"
        MENSAJE="Alfresco Produccion CARGA   $HOST  $CARGA                                    .";
        MERGE="$MENSAJE"
        URL="https://api.telegram.org/bot$TOKEN/sendMessage"
        curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"  > /dev/null
        #curl -s -X POST $URL -d chat_id=$IDPablo -d text="$MENSAJE"  > /dev/null

fi

