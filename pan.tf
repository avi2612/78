resource "aws_instance" "pan" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = lookup(var.instance_type, var.load)
  key_name               = var.keypair
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  user_data              = file("python_docker_compose.sh")
  iam_instance_profile = aws_iam_instance_profile.ec2_s3_profile.name


  root_block_device {
    volume_type = "gp2"
    volume_size = var.root_ebs_size
    tags = {
      Name = "${var.unique_id}-pan"
    }
  }
  tags = {
    Name   = "${var.unique_id}-pan",
    Tenant = var.unique_id,
    App    = "pan"
  }

  provisioner "local-exec" {
    command = "echo 'pan-server ansible_host=${aws_instance.pan[0].public_ip}' >> /home/avi/Desktop/automate-pan/terraform-scripts/0-documents/inventory.txt"
  }

  count = var.launch_pan == true ? 1 : 0
}
