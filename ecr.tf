resource "aws_ecr_repository" "this" {
  name = local.naming.repo
  tags = merge(
    local.tags,
    tomap({ "Name" = "${local.naming.display} ECR Repository" })
  )
}
resource "aws_ecr_repository_policy" "this" {
  repository = aws_ecr_repository.this.name
  policy     = data.aws_iam_policy_document.this.json
}
resource "aws_ecr_lifecycle_policy" "this" {
  repository = aws_ecr_repository.this.name
  policy     = local.lifecycle_policy
}
