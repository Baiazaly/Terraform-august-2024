provider aws {
    region = "us-east-2"
}


resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

# resource "aws_s3_bucket" "b" {
#   bucket = "kaizen-baiaz2003"
#   force_destroy = true
# }
# resource "time_sleep" "wait" {
#   depends_on = [aws_s3_bucket.b]

#   create_duration = "10s"
# }

# resource "aws_s3_object" "object" {
#   depends_on = [time_sleep.wait]
#   bucket = "kaizen-baiaz2003"
#   key    = "main.tf"
#   source = "main.tf"

# }
# resource "aws_s3_bucket" "b2" {
#   bucket_prefix = "kaizen-"
#   force_destroy = true
# }