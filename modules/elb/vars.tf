variable "lb_sg" {
        default = "sg-01030dd1fb2e49368"
}

variable "subnet-ids" {
        type = "list"
        default = ["subnet-0c1284c38971c3628","subnet-04d38421520bd8e59"]
}

variable "instance-id" {}
