
variable "s3_bucket_configs" {
  description = "A map of S3 bucket configurations"
  type        = map(object({
    acl    = string
    tags   = map(string)
  }))
  default = {
    yuzeir-bucket = {
      acl  = "private"
      tags = {
        Name = "yuzeir-bucket"
        Env  = "Development"
      }
    }
    yuzeir-bucket2 = {
      acl  = "private"
      tags = {
        Name = "yuzeir-bucket2"
        Env  = "Production"
      }
    }
  }
}
