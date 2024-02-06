resource "aws_s3_bucket" "mybucket1" {

  count  = var.s3variable
  bucket = "testterraformawsconnections-${count.index}"
}

resource "aws_s3_bucket" "mybucket2" {
  for_each = toset(var.bucket_names)

  bucket = "testterraformawsconnection-${each.value}" 
}


