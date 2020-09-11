resource "aws_instance" "dev-servers" {
    count = length(var.servername)
    ami = var.machineimage
    instance_type = var.machinetype 
    key_name = var.ssh
    
    tags = {
        Name = var.servername[count.index] 
    }
}