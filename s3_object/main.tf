locals {
  bucket_name = "sm-di-${var.student_alias}"
}

resource "aws_s3_object" "student_alias" {
  bucket  = local.bucket_name
  key     = var.filename
  content = "This bucket is reserved for ${var.student_alias}. Content from preeset : ${data.aws_s3_object.preset.body}"
}

resource "aws_s3_object" "count_example" {
  count   = 3
  bucket  = local.bucket_name
  key     = "${var.filename}-${count.index + 1}"
  content = "This is the file ${count.index}"
}

resource "aws_s3_object" "conditional_example" {
  count   = var.filename == "true_val" ? 1 : 0
  bucket  = local.bucket_name
  key     = "${var.filename}-conditional"
  content = "This is the file ${count.index}"
}

resource "aws_s3_object" "output_zip" {
  bucket = local.bucket_name
  key = "output.zip"
}

data "aws_s3_object" "preset" {
  bucket = local.bucket_name
  key = "preset/${var.student_alias}.txt"
}