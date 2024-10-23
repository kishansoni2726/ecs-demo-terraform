resource "aws_docdb_cluster" "docdb" {
  cluster_identifier      = var.db_name
  availability_zones      = ["us-east-1a"]
  engine                  = "docdb"
  master_username         = "mongo"
  master_password         = "admin123"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
  port                    = 27017
    enabled_cloudwatch_logs_exports = ["audit", "profiler"]
  tags = {
    Name = "${var.project}-MongoDB"
  }
}

resource "aws_docdb_cluster_instance" "cluster_instances" {
  count               = 1
  identifier         = "mongo-db-instance"
  cluster_identifier = aws_docdb_cluster.docdb.id
  instance_class     = "db.t3.medium"
   apply_immediately   = true 

}


