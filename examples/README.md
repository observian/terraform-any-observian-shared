# Examples
 - Loopable - [Abitrarty loop number. Similar to a for with a set count.](##Example-1---"Bare-Bones"-w/-Route53-and-ACM)
<p>&nbsp;</p>

## Loopable - For looping on an arbitrary number
While this can be achieved other ways, it sometimes feels cleaner to have set number.


```hcl
module "shared" {
  source = "https://github.com/observian/terraform-any-observian-shared.git"
}

locals
{
  # To force terraform to loop arbitrarily, this a custom list of numbers that work as indexes.
  count = module.shared.loopable[5]

  count-to-five = [
    for num in module.shared.loopable[5] : num
}

output "index-count" {
    
}
```
<p>&nbsp;</p>