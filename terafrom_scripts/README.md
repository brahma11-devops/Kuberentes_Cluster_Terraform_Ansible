terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy

# Ansible Commands

ansible-playbook -i ../Dynamic_Inventory.py ../site.yml -u ubuntu --private-key=~/Desktop/AWS/devops.pem  --ssh-common-args "-o StrictHostKeyChecking=no"
