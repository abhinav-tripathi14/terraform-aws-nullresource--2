module "nullresource--1" {
#source  = "app.terraform.io/Test-Abhinav/nullresource--1/aws"
#version = "1.0.4"
source = "git::ssh://git@github.com/abhinav-tripathi14/terraform-aws-nullresource--1.git?ref=main"
}
resource "null_resource" "test"{
provisioner "local-exec" {
    command = "./scripts/test.sh"
    working_dir = "${path.root}/scripts"
  }
}
resource "null_resource" "test-not-path"{
provisioner "local-exec" {
    command = "aws --version"
  }
}
resource "null_resource" "path-local-exec-1"{
provisioner "local-exec" {
    command = "pwd"
  }
}
