resource "random_id" "foo" {
  count = var.enabled ? 1 : 0
  keepers = {
    # Generate a new id each time we switch to a new seed
    seed = "${module.this.id}-${var.example}"
  }
  byte_length = 8

  lifecycle {
    ignore_changes = [
      keepers["timestamp"]
    ]
  }
}

locals {
  failure = var.enabled && var.enable_failure ? file("Failed because failure mode is enabled") : null
}

resource "validation_warning" "warn" {
  condition = true
  summary   = "Test warning"
  details   = "Test warning"
}

provider "validation" {
  # Configuration options
}
