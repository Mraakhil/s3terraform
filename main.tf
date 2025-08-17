resource "aws_s3_bucket" "s3bucketmss" {

bucket = "s3-bucket-msdhoniisakingofindia"

acl = "private"

versioning {

enabled = true

}

lifecycle_rule {

enabled = true

transition {

days = 10 storage_class = "STANDARD IA"

}

transition {

days = 30 }

storage_class = "GLACIER"

}

tags = {

Name = "S3 Bucket MSS by Terraform" }

}
