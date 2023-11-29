//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/Mohannad-Terraform/compute/aws"
  version = "1.0.0"

  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXHnAilgzdZTpDtRa3TcEYUzWXskThfoYjM7oN7DkeAQSBNzVbkmU7WU1CtQ2r7ueVRxWNpAu8SxFXje9Ufht3mkJRlUb7sSm7flzN1Jd63D59jp1n2hayUtVMeRCNIzQSdMP5GjwsMePtm6+juv+J9+FD2sEeSmjaQAl7hG5qhXZF+ARipJ0V8e3tPsbzRaLyI2oo46euVmeBXrqsVhZ3SGQjAZcfQvMxxfy1h7acctNgfcj4kPM1Hiypv1u1yJ24Z7CbrRBSxbdC6b7TjeB5StxZ5saw6+hlo7amK1BKhnkDKBl4XFBdM1lUlyGjqO9eZnvungvTzEY/c4UbxhBX mohan@LAPTOP-TJ4JNI0U"
  public_sg           = module.networking.public_sg
  public_subnets      = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/Mohannad-Terraform/networking/aws"
  version = "1.0.0"

  access_ip  = "0.0.0.0/0"
  aws_region = "us-east-1"
}