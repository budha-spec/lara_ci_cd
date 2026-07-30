resource "aws_s3_bucket" "storage" {
    bucket ="${local.name}-storage"
    tags = {
        Name = local.name
    }

}