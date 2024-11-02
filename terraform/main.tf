
data "aws_vpc" "default" {
    default = true
}

data "aws_subnet" "default" {
    vpc_id = data.aws_vpc.default.id
    default_for_az = true
    availability_zone = "us-west-2a"
  
}

resource "aws_security_group" "web" {
    name = "web"
    vpc_id = data.aws_vpc.default.id
    
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "HTTP"
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "SSH"
    }

    ingress  {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "HTTPS"
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}


resource "aws_instance" "web" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = data.aws_subnet.default.id
    vpc_security_group_ids = [aws_security_group.web.id]
    tags = {
        Name = "web"
    }

}