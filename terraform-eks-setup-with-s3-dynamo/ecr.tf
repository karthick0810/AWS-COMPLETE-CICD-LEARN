resource "aws_ecr_repository" "karthickapp" {
  name = "karthickapp"
}

resource "aws_ecr_repository" "nginx" {
  name = "nginx"
}