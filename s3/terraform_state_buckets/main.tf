

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "v4.5.0"

  bucket = "prolatek-terraform-state"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}