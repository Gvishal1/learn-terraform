resource "null_resource" "null" {
  count = 5
  provisioner "local-exec" {
    command = "echo Index No - ${count.index}"
  }
}

variable "fruits" {
  default = {
    apple = {
      name  = "Apple"
      count = 100
    }

    banana = {
      name  = "Banana"
      count = 20
    }

  }
}

resource "null_resource" "test1" {
  for_each = var.fruits
  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.value["name"]}, Fruit Count - ${each.value["count"]}"
  }
}

