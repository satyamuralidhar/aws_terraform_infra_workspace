#to get private ip details on GUI 
# data "http" "my_ip" {
#     url = "http://ifconfig.me"
# }

data "curl" "mycurl" {
  http_method = "GET"
  uri = terraform.workspace == "dev" ? "http://${aws_instance.myvms[0].public_ip}:80" : null

  depends_on = [
    aws_instance.myvms
  ]
}
resource "time_sleep" "resource_propagation" {
  create_duration = "30s"
  triggers = data.curl.mycurl
}