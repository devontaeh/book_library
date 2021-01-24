resource "aws_instance" "flaskapp" {
  count                  = var.count_flaskapp
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.flaskapp_instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = aws_key_pair.kpair.key_name
  vpc_security_group_ids = ["${aws_security_group.sg_flaskapp.id}"]
  tags = {
    "Name" = "flaskapp-${count.index + 1}"
  }
}