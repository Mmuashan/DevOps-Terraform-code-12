module "Instance" {
    source = "../module/lightsail"
    name = "mariusdev"
    availability_zone = "us-east-1b"
    blueprint_id = "amazon_linux_2"
    bundle_id = "nano_1_0"
    key_pair_name = "Devops"
  
}