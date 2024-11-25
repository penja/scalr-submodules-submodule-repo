variable "name" {
    type = string
}

resource "null_resource" "test" {
    triggers = {
      always_run = timestamp()
    }

    provisioner "local-exec" {
        command = "echo2 ${var.name}"
    }
}

output "uuid" {
  value = null_resource.test.id
}
