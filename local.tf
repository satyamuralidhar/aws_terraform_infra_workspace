# resource "null_resource" "shell" {
#   provisioner "local-exec" {
#     command = "sh test.sh"
#   }
#   depends_on = [
#     aws_instance.myvms,
#     time_sleep.resource_propagation
#   ]
# }