output "flaskapp_public_ip" {
    value = aws_instance.flaskapp.*.public_ip
}
