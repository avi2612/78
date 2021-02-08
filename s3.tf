resource "aws_s3_bucket" "s3" {
  bucket = "${var.unique_id}-client-s3-bucket"
  
    provisioner "local-exec" {
    command = "echo '\n[all:vars]\nbucket => ${aws_s3_bucket.s3.bucket}\n' >> /home/avi/Desktop/automate-pan/terraform-scripts/0-documents/inventory.txt"
  }
  
}

output "pan-s3-bucket" {
  value = aws_s3_bucket.s3.bucket
}