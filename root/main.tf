locals {
  student_alias = "di-student34"
}

module "file1" {
  source = "../s3_object"
  student_alias = local.student_alias
  filename = "file"
}