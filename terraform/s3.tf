resource "aws_s3_bucket" "storage" {
    count  = var.create_bucket ? 1 : 0
    bucket = "${local.name}-storage"
    tags = {
        Name = local.name
    }

}

data "aws_s3_bucket" "storage" {
  count  = var.create_bucket ? 0 : 1
  bucket = "${local.name}-storage"
}