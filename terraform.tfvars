############## TFVARS #################### 

name = "Test-Workspace-Ec2"
instance_count = { 
  "Dev"  = 1 
  "Prod" = 2 
} 

instance_type = { 
  "Dev"  = "t2.micro" 
  "Prod" = "t3.small" 
} 