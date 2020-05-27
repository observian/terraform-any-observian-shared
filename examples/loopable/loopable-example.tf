module "shared" {
  source = "https://github.com/observian/terraform-any-observian-shared.git"
}

locals {
  # To force terraform to loop arbitrarily, this a custom list of numbers that work as indexes.
  count = module.shared.loopable[5]

  count-to-five = [
    for num in module.shared.loopable[5] : num
  ]
}

output "index-count" {
  value = local.count
}