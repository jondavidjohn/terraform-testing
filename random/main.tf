resource "random_pet" "animal" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 3
}

resource "random_pet" "other_animal" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 5
}

output "random_animal" {
  value = "${random_pet.animal.id}"
}
output "random_other_animal" {
  value = "${random_pet.other_animal.id}"
}
