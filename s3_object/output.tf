output "preset_content" {
  value = data.aws_s3_object.preset.body
}

output "student_alias_object_id" {
  value = aws_s3_object.student_alias.id
}