variable "user_names" {
  type        = list(string)
  description = "IAM usernames"
  default = [ "" ]
}

variable "owner" {
  type        = string
  description = "Owner names"
  default = ""
}

variable "purpose" {
  type        = string
  description = "Purpose of creating resources"
  default = ""
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
  default = ""
}
variable "EC2" {
  type        = map(any)
  description = "EC2 specifications"
  default = {
    
  }
}
