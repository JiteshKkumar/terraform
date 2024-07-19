resource "aws_instance" "web" {
ami = var.os
instance_type =  var.size

tags = {
    Name = "linuxtest_machine"

}

}

#output

output "IPaddress" {
    value = aws_instance.web.public_ip
  
}