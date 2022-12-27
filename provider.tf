/* provider "aws" {
  region = "us-east-1"
} */

provider "aws" {
  region     = "us-east-1"
  profile = "default"
  shared_credentials_file = "/home/latheef/.aws/credentials"
  #access_key = var.access_key
  #secret_key = var.secret_key
  }