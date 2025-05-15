resource "aws_ebs_volume" "volume_example" {
  availability_zone = "us-west-2a"
  size              = 40

  tags = {
    Name = "volume_name"
  }
}
