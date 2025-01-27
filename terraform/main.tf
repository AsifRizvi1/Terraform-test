
# Define the provider
provider "aws" {
  region = "us-east-2"
  
}

# Define an AWS EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0cb91c7de36eed2cb" # Example AMI ID for us-east-2
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

# Output the public IP of the instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
  description = "The public IP address of the EC2 instance"
}

