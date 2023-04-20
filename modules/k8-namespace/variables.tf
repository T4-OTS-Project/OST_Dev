 variable "labels" {
    type        = map(any)
    description = "Pease provide labels"
    default = {
      app = "ots"
    }
  }

  variable "namespace_name" {
    type        = string
    description = "namespace name"
  }
