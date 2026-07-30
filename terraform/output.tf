output "beanstalk_environment" {
  value = aws_elastic_beanstalk_environment.prod.endpoint_url
}

output "database_endpoint" {
  value = aws_db_instance.mysql.address
}