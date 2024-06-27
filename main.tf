provider "aws" {
  region                        = var.region
  access_key                    = var.aws_access_key  # Opcional si usas las variables de entorno
  secret_key                    = var.aws_secret_key  # Opcional si usas las variables de entorno
  skip_credentials_validation  = true
  skip_metadata_api_check      = true
  endpoints {
    ec2 = "https://ec2.us-east-1.amazonaws.com"
    iam = "https://iam.us-east-1.amazonaws.com"
    s3  = "https://s3.us-east-1.amazonaws.com"
  }
}


resource "aws_instance" "test_medium" {
  ami           = var.ami_id
  instance_type = var.instance_type_medium
  user_data     = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y python3 python3-pip nodejs npm golang
    EOF

  tags = {
    Name = "test-medium"
  }
}

resource "aws_instance" "test_small" {
  ami           = var.ami_id
  instance_type = var.instance_type
  user_data     = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y python3 python3-pip nodejs npm golang
    EOF

  tags = {
    Name = "test-small"
  }
}






