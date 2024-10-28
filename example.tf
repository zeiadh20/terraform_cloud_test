provider "aws" {
  region  = "us-east-1"
}
resource "aws_iam_user" "lb" {
  name  = "dev_user${count.index+1}"
  count = 3
  path  = "/system/"
}
