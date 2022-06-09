output "sample_file_content_as_list" {
  value = split(" ", file("./sample.txt"))
}