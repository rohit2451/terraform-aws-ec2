variable "ami_id" {
    type = string
    #default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    validation {
        condition = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "instance_type can only be one of t3.micro, t3.medium, t3.small"
    }
}

variable "security_group_ids" {
    type = list(string)
   #default = ["sg-0646dad9969a1d51d"]
}