resource "aws_key_pair" "tf-key-pair" {
key_name = "tf-key-pair"
public_key = tls_private_key.rsa.public_key_openssh
}
resource "tls_private_key" "rsa" {
algorithm = "RSA"
rsa_bits  = 4096
}
resource "local_file" "tf-key" {
content  = tls_private_key.rsa.private_key_pem
filename = "tf-key-pair"
}
# Create EC2 instance
resource "aws_instance" "nginx_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.pub_subnet_2_id # Choose the first public subnet for simplicity
  tags = {
    Name = "nginx-instance"
  }

  # Associate security group with the instance
  security_groups = var.security_group_ids
  key_name = "tf-key-pair"
  # Provisioning script to install nginx
  user_data = <<-EOF
      #!/bin/bash
      sudo yum update -y
      sudo yum install -y nginx
      sudo systemctl start nginx
      sudo systemctl enable nginx
      EOF

}