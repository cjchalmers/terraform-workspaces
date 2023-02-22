############### VARIABLES ################### 
variable "access_key" { 
  type = string 
} 
variable "secret_key" { 
  type = string 
} 
variable "name" { 
  type = string 
} 
variable "instance_type" { 
  type = map(string) 
} 
variable "instance_count" { 
  type = map(number) 
} 