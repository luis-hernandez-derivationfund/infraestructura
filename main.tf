provider "aws" {
  region=var.region
  access_key= "mock_access_key"
  secret_key="mock_secret_key"
  skip_credentials_validation=true
  skip_metadata_api_check=true
  endpoints {
    ec2 = "http://localhost:4566"
    iam = "http://localhost:4566"
    s3  = "http://localhost:4566"
  }
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y python3 python3-pip nodejs npm golang
              EOF

  tags = {
    Name = "ExampleInstance"
  }
}