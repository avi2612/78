variable "instance_type" {
  type = map(any)
  default = {
    low    = "t2.micro"
    medium = "t2.small"
    high   = "t2.large"
  }
}

variable "root_ebs_size" {
  default = 12
}

variable "launch_pan" {
  default = false
}

variable "launch_saas" {
  default = false
}

variable "launch_nuxt" {
  default = false
}
