data "aws_subnet" "private-subnet" {
  id = "subnet-05e1a17fe2fd0ddc4"
}

resource "aws_instance" "instance2" {
  ami           = var.aws_ami
  instance_type = var.instance_type
  subnet_id     = data.aws_subnet.private-subnet.id

  tags = {
    Name = "HelloWorld"
  }
}