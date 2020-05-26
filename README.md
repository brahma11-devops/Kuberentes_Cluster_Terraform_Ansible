terraform init terafrom_scripts/
terraform plan terafrom_scripts/
terraform apply --auto-approve terafrom_scripts/
terraform destroy --auto-approve terafrom_scripts/

ansible-playbook -i DynamicInventory.py site.yml -u ubuntu --private-key=<PemFilePath>  --ssh-common-args "-o StrictHostKeyChecking=no"
