provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  count                  = 3
  ami                    = "ami-01a00762f46d584a1"
  instance_type          = "t3.micro"
  key_name               = "Likitha"
  vpc_security_group_ids = ["sg-0c9f287a7e61f2b73"]

  tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
  default = ["jenkins", "tomcat-1", "Monitoring server"]
}

resource "aws_s3_bucket" "one" {
  bucket = "munthalalikhithabharath@1234567"

  versioning {
    enabled = true
  }
}
