provider "random" {}

resource "random_pet" "mypet" {
   length = 3
   separator = "_"
}

output "mypet" {
  value = random_pet.mypet.id
}

