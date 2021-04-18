#!/bin/bash

PIP=$(az vm show --show-details -g grupo_recursos2_westeurope -n $1 --query publicIps --output tsv)

ssh usuario1@$PIP
