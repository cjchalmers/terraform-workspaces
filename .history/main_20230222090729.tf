##################### PROVIDER ############################### 
provider "aws" { 
  access_key = var.access_key 
  secret_key = var.secret_key 
  region     = "us-east-1" 
} 
###################### LOCALS ############################### 
locals { 
  common_tags = { 
    project     = "Test" 
    environment = terraform.workspace 
  } 
  name_prefix    = "${var.name}-${terraform.workspace}" 
} 
################### EC2 INSTANCE ############################## 
resource "aws_instance" "test" { 
  count         = var.instance_count[terraform.workspace] 
  ami           = "ami-052efd3df9dad4825" 
  instance_type = var.instance_type[terraform.workspace] 
  tags = merge(local.common_tags, { 
    Name = "${local.name_prefix}-${count.index}" 
  }) 
} 