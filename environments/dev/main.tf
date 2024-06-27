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






