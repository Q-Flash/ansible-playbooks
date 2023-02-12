# ansible-playbooks
Collection of ansible playbooks for various home lab tasks


## Examples

### Setup new Ubuntu VM for specific hostname
```
ansible-playbook --vault-password-file=vault_secret --private-key /root/.ssh/id_rsa -i inventories/ ansible-playbooks/ubuntu/initial_setup.yml --limit "QPG01001018.qflash.org"
```

