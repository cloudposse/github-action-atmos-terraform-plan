resource "random_id" "foo" {
  keepers = {
    # Generate a new id each time we switch to a new seed
    seed = "${module.this.id}-${var.example}"
  }
  byte_length = 8
}

locals {
  failure = var.enable_failure ? file("Failed because failure mode is enabled") : null
}