resource "aws_instance" "kubernetes_Servers" {
  count           = 1
  ami             = var.kubernetes_ami
  instance_type   = var.master_instance_type
  security_groups = [aws_security_group.kubernetes_sg.id]
  subnet_id       = element(aws_subnet.kubernetes_subnets.*.id, count.index)
  key_name        = "devops"

  tags = {
    Name = "Kubernetes_Servers"
    Type = "Kubernetes_Master"
  }

}

resource "aws_instance" "kubernetes_Workers" {
  count           = 2
  ami             = var.kubernetes_ami
  instance_type   = var.worker_instance_type
  security_groups = [aws_security_group.kubernetes_sg.id]
  subnet_id       = element(aws_subnet.kubernetes_subnets.*.id, count.index)
  key_name        = "devops"

  tags = {
    Name = "Kubernetes_Servers"
    Type = "Kubernetes_Worker"
  }

}
