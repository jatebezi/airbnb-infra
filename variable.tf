variable "ami_id" {

  type        = string

  default     = "ami-0453ec754f44f9a4a"

  description = "instance ami used"

}

 

variable "instance_type" {

  type        = string

  default     = "t2.micro"

  description = "Instance type used"

}