<<<<<<< HEAD
output "pub_subnet_1" {
  value = aws_subnet.public-1.id
}
output "pub_subnet_2" {
  value = aws_subnet.public-2.id
}
output "security_group" {
  value = [aws_security_group.allow_tls.id]
=======
output "pub_subnet_1" {
  value = aws_subnet.public-1.id
}
output "pub_subnet_2" {
  value = aws_subnet.public-2.id
}
output "security_group" {
  value = [aws_security_group.allow_tls.id]
>>>>>>> 8c549d4d1e2c6fcd8a416a9fd5712b70ef41bf7b
}