variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"

}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        project = "expense"
        environment = "dev"

        Name = "expense-dev"

    }

}

variable "from_port" {
    type = number
    default = 0
  
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list 
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map 
    default = {
        Name = "expense-backend-dev"
    }
}
