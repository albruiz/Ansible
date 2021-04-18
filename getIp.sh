#!/bin/bash

PIP=$(az vm show --show-details -g $1 -n $2 --query publicIps --output tsv)

echo \"#!/bin/bash\" >> conexion.sh
echo ssh usuario1@$PIP >> conexion.sh
chmod +x conexion.sh
