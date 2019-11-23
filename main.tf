
provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "web" {
  ami           = "ami-050a22b7e0cf85dd0"
  instance_type = "t2.micro"
  key_name      = "master-key"

  tags = {
    Name = "tf-deployment-server"
  }
}
