//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/Mohannad-Terraform/compute/aws"
  version = "1.0.0"

  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDISGOWnSW4LvrFlsM7oxd2FHNpSFK9LNauCcL+UPwdvuQfWO3T1XLWdBxHosUveN7nxi9/ikByPfGu1SSd7udyUXrvWFt/3f+jlYLASbp+n1NlbO1iqn8zgi38bhPrmK1kKfG+hWVcbLtOiijFsT846QF11QDL52Pm1++hSDxkExddgTZ+q+toSKwH1GC6lTQdZ7KUtnVqqR+1fssAkr8jA3bsUS7HZPr5QZyogsq+1/ViDxj1m7eHLGlm2KDZVkE32mM/ZNbbRwWH0ce9YETbFlMCg/eLcdHilv4kl1yatX946iITJB3GgW9YCtLizCQvX+h49v7c5kpGSkBmtkQv mohan@LAPTOP-TJ4JNI0U"
  public_sg           = module.networking.public_sg
  public_subnets      = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/Mohannad-Terraform/networking/aws"
  version = "1.0.0"

  access_ip  = "0.0.0.0/0"
  aws_region = "us-east-1"
}