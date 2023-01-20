terraform {
   # cloud {
  #   organization = "<your_tfc_org>"

  #   workspaces {
  #     name = "<your_workspace>"
  #   }
  # }

variable "pet_name_length" {
  type        = number
  description = "Number of words in pet name"
  default     = 2
}

variable "animal_name_length" {
  type        = number
  description = "Number of words in animal name"
  default     = 3
}

resource "random_pet" "pet_name" {
  length = var.pet_name_length
}

output "pet_name" {
  value = random_pet.pet_name.id
}

resource "random_pet" "animal_name" {
  length = var.animal_name_length
}

output "animal_name" {
  value = random_pet.animal_name.id
}
