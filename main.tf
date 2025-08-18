resource "aws_s3_bucket" "s3bucketexample" {

bucket = "s3-bucket-msdhoniisakingofindia"

acl = "private"

versioning {

enabled = true

}



}
