resource "aws_s3_bucket" "example" {

bucket = "s3-bucket-msdhoniisakingofindia"

acl = "private"

versioning {

enabled = true

}



}
