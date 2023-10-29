output "arn" {
  value = aws_ecr_repository.this.arn
}
output "name" {
  value = aws_ecr_repository.this.name
}
output "url" {
  value = aws_ecr_repository.this.repository_url
}
output "registry_id" {
  value = aws_ecr_repository.this.registry_id
}
