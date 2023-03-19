provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags = {
    Name = "Example EC2 Instance"
  }
}

resource "aws_instance" "example2" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags = {
    Name = "second EC2 Instance"
  }
}
resource "aws_s3_bucket" "my1_02041987bucket" {
  bucket = "my-02041987bucket"
}

resource "aws_s3_bucket_acl" "my_02041987bucket_acl" {
  bucket = aws_s3_bucket.my1_02041987bucket.id

  acl = "private"
}
