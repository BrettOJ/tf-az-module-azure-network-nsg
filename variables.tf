# Input variables for the NSG module


variable "location" {
  description = "The location/region where the Network Security Group will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "security_rules" {
  description = "List of security rules to apply to the NSG"
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
}

variable "naming_convention_info" {
  description = "A map containing the naming convention information"
  type        = map(object({
    name = string
    project_code = string
    env = string
    zone = string
    tier = string
  }))
  
}
