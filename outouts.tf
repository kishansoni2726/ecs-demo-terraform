# Optional: Output the DocumentDB cluster endpoint to connect to it later
output "docdb_endpoint" {
  value = aws_docdb_cluster.docdb.endpoint
}
