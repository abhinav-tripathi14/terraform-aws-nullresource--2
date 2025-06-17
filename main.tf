module "nullresource--1" {
source  = "app.terraform.io/Test-Abhinav/nullresource--1/aws"
version = "1.0.4"
}
resource "null_resource" "test"{
provisioner "local-exec" {
    command = "bash ${path.root}/scripts/test.sh"
  }
}
