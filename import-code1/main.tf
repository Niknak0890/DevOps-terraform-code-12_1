
resource "aws_instance" "web" {
  ami                                  = "ami-051f8a213df8bc089"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "utrains-key"
  monitoring                           = false
  security_groups                      = ["launch-wizard-4"]
  subnet_id                            = "subnet-0a0fa5a589d2bdf54"
  tags                                 = {
    Name = "Created By Terraform"
  }
}