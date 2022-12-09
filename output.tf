output "instance_ips" {
  value = aws_instance.myvms[*].public_ip
}
# output "myip" {
#  value = data.http.my_ip.response_body
# }

# output "pub_ip" {
#  value = aws_instance.myvms[*].public_ip
# }

# output "all_todos" {
#   value = local.json_data
# }
# locals {
#   json_data =  (data.curl.mycurl.response)
# }