terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_pet" "pet_name" {
  length = 2
}

output "pet_name" {
  value = random_pet.pet_name.id
}

resource "random_pet" "animal_name" {
  length = 2
}

output "animal_name" {
  value = random_pet.animal_name.id
}