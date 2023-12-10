// spin up multiple ec2 instances
// terraform init
// terraform plan
// terraform apply

provider "aws" {
    region = "us-east-1"
    access_key = "YOUR_ACCESS_KEY"
    secret_key = "YOUR_SECRET_KEY"
}

resource "aws_instance" "ec2_instance" {
    // Set number of ec2 instances
    count = 3
    // Set ami and instance type
    ami = "ami-1234"
    instance_type = "t2.micro"

    tags = {
        Name = "ec2-instance-${count.index + 1}"
    }
}
