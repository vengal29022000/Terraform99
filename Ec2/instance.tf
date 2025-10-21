resource "aws_instance" "sample" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.firstsg.id]
    tags = {
        Name = "terraform-demo"
    }
}

resource "aws_security_group" "firstsg" {
    name = "allow1"
    description = "this is security group for sample instance"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    
    }
     egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    
    }

    tags = {
        Name = "allow-lts"
    }

}