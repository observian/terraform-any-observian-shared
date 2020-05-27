www.observian.com

# terraform-any-observian-shared
Provider agnostic helpers.

# Examples
 - Loopable - Abitrarty loop number. Similar to a for with a set count.
<p>&nbsp;</p>

## Loopable - For looping on an arbitrary number
While this can be achieved other ways, it sometimes feels cleaner to have set number.


```hcl
module "shared" {
  source = "https://github.com/observian/terraform-any-observian-shared.git"
}

locals {
  # To force terraform to loop arbitrarily, this a custom list of numbers that work as indexes.
  count = module.shared.loopable[5]

  count-to-five = [
    for num in module.shared.loopable[5] : num
}

output "index-count" {
    value = local.count
}
```

Produces
```
Outputs:

index-count = [
  0,
  1,
  2,
  3,
  4,
]
```
<p>&nbsp;</p>
