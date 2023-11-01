
variable "s3_bucket_configs" {
  description = "A map of S3 bucket configurations"
  type        = map(object({
    acl    = string
    tags   = map(string)
  }))
  default = {
    bucket1 = {
      acl  = "private"
      tags = {
        Name = "Bucket 1"
        Env  = "Development"
      }
    }
    bucket2 = {
      acl  = "public-read"
      tags = {
        Name = "Bucket 2"
        Env  = "Production"
      }
    }
  }
}
