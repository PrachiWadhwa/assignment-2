variable "s3variable"{
    type= number
    default= 3

}
variable "bucket_names" {
  type    = set(string)
  default = ["bucket1", "bucket2", "bucket3"]
}