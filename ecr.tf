resource "aws_ecr_repository" "ecr_repository" {
  name                 = "${var.ecr_name}-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    Name = "${var.ecr_name}-repo"
  }
}