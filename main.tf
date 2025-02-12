# Example of creating an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}
----------------------------------------------------------------------------------
# Example of creating an virtual machine on azure 
resource "azurerm_linux_virtual_machine" "example" {
  name                = "example-vm"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = "Standard_B1s"  # VM size (e.g., Standard_B1s)
  admin_username      = "adminuser"    # Change to your desired username
  admin_password      = "Password123!" # Change to your desired password

  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  os_disk {
    name              = "example-os-disk"
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  tags = {
    environment = "Testing"
  }
}
