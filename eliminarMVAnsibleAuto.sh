#!/bin/bash

echo "## Eliminar una MV
## Se hace con Ansible, de manera remota.
## @author: Alberto Ruiz

---
- hosts: localhost

  tasks:
  - name: Eliminacion de una MV
    azure_rm_virtualmachine:
      resource_group: $1
      name: $2
      remove_on_absent: all_autocreated
      state: absent
      
  - name: Eliminacion de un NIC que sobra
    azure_rm_networkinterface:
      resource_group: $1
      name: $2
      state: absent
      
  - name: Eliminacion de una IP publica que sobra
    azure_rm_publicipaddress:
      resource_group: $1
      name: $2
      state: absent" >> eliminaMVAuto.yml

ansible-playbook eliminaMVAuto.yml



rm eliminaMVAuto.yml

