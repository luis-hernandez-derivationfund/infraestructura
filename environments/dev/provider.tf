provider "aws" {
  region                        = var.region
  access_key                    = var.aws_access_key
  secret_key                    = var.aws_secret_key
  skip_credentials_validation  = true
  skip_metadata_api_check      = true
  profile = "dev"
  endpoints {
    ec2 = "https://ec2.us-east-1.amazonaws.com"
    iam = "https://iam.us-east-1.amazonaws.com"
    s3  = "https://s3.us-east-1.amazonaws.com"
  }
}