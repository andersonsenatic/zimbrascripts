#!/bin/bash
echo "Conta conta recurso habilitado"
echo "Conta, Conta de Emcaminhamento"


for conta in $(zmprov -l gaa); do


    rec=(`zmprov ga $conta | grep "zimbraPrefReplyToEnabled: TRUE" | cut -d: -f2 | wc -m`)
    enc=(`zmprov ga $conta | grep zimbraPrefReplyToAddress | cut -d: -f2`)


if [ "$rec" -eq 6 ] ; then


echo $conta, $enc

   fi

done
