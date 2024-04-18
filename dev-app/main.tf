module "rds1" {
    source = "../module/rds"
    db_name = "backend"
    username = "marius"
    password = "iikknniiinmjn"
    backup_retention_period = 10

}
module "key1" {
    source = "../module/key-pair"
    key_name = "marius1"
    region_name = "us-east-1"
  
}