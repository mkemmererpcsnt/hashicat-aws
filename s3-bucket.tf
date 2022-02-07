// module "s3-bucket" {
//   source  = "app.terraform.io/sev1-michaelkemmerer/s3-bucket/aws"
//   version = "2.8.0"
//   # insert required variables here
// }

module "s3-bucket" {
  source  = "app.terraform.io/sev1-michaelkemmerer/s3-bucket/aws"
  version = "2.13.0"
  # insert required variables here
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket"
  acl    = "private"
  bucket_prefix = "${var.prefix}"

  versioning = {
    enabled = true
  }

}